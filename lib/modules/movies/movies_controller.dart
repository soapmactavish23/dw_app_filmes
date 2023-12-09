// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:get/get.dart';

import 'package:app_filmes/services/genres/genres_service.dart';

class MoviesController extends GetxController {
  final GenresService _genresService;
  MoviesController({
    required genresService,
  }) : _genresService = genresService;
}
