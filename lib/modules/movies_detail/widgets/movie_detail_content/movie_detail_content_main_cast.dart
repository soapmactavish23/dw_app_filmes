import 'package:app_filmes/application/ui/theme_extension.dart';
import 'package:app_filmes/models/movie_detail_model.dart';
import 'package:app_filmes/modules/movies_detail/widgets/movie_detail_content/movie_cast.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MovieDetailContentMainCast extends StatelessWidget {
  final MovieDetailModel? movie;
  final showPanel = false.obs;

  MovieDetailContentMainCast({super.key, this.movie});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(color: context.themeGrey),
        Obx(
          () => ExpansionPanelList(
            elevation: 0,
            expansionCallback: (index, isExpanded) {
              showPanel.toggle();
            },
            children: [
              ExpansionPanel(
                canTapOnHeader: false,
                isExpanded: showPanel.value,
                backgroundColor: Colors.white,
                headerBuilder: (context, isExpanded) {
                  return const Padding(
                    padding: EdgeInsets.all(6.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Elenco',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  );
                },
                body: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:
                        movie?.cast.map((c) => MovieCast(cast: c)).toList() ??
                            [],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
