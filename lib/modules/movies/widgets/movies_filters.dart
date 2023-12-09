import 'package:app_filmes/modules/movies/widgets/filter_tag.dart';
import 'package:flutter/material.dart';

class MoviesFilters extends StatelessWidget {
  const MoviesFilters({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            FilterTag(),
            FilterTag(),
            FilterTag(),
            FilterTag(),
            FilterTag(),
            FilterTag(),
            FilterTag(),
          ],
        ),
      ),
    );
  }
}
