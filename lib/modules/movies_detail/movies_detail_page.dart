import 'package:app_filmes/modules/movies_detail/widgets/movie_detail_content/movie_detail_content.dart';
import 'package:app_filmes/modules/movies_detail/widgets/movie_detail_header.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './movies_detail_controller.dart';

class MoviesDetailPage extends GetView<MoviesDetailController> {
  const MoviesDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Detalhe'),
        ),
        body: Obx(
          () => SingleChildScrollView(
            child: Column(
              children: [
                MovieDetailHeader(
                  movie: controller.movie.value,
                ),
                MovieDetailContent(
                  movie: controller.movie.value,
                )
              ],
            ),
          ),
        ));
  }
}
