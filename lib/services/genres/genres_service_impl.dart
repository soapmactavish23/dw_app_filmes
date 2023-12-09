// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:app_filmes/models/genres_model.dart';
import 'package:app_filmes/repositories/genres/genres_repository.dart';
import 'package:app_filmes/services/genres/genres_service.dart';

class GenresServiceImpl implements GenresService {
  final GenresRepository _genresRepository;
  GenresServiceImpl({
    required genresRepository,
  }) : _genresRepository = genresRepository;

  @override
  Future<List<GenresModel>> getGenres() => _genresRepository.getGenres();
}
