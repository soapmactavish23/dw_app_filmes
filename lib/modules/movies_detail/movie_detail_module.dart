import 'package:app_filmes/application/modules/module.dart';
import 'package:app_filmes/modules/movies_detail/movies_detail_bindings.dart';
import 'package:app_filmes/modules/movies_detail/movies_detail_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class MovieDetailModule implements Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/movie/detail',
      page: () => const MoviesDetailPage(),
      binding: MoviesDetailBindings(),
    ),
  ];
}
