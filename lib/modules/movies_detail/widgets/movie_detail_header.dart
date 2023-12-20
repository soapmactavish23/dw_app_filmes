import 'package:app_filmes/models/movie_detail_model.dart';
import 'package:app_filmes/modules/movies_detail/movies_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MovieDetailHeader extends GetView<MoviesDetailController> {
  final MovieDetailModel? movie;
  const MovieDetailHeader({Key? key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var movieData = movie;

    if (movieData != null) {
      return SizedBox(
        height: 278,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: movieData.urlImages.length,
          itemBuilder: (_, index) {
            final image = movieData.urlImages[index];
            return Padding(
              padding: const EdgeInsets.all(2),
              child: Image.network(image),
            );
          },
        ),
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}
