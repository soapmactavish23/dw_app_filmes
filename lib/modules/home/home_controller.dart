// ignore_for_file: constant_identifier_names

import 'package:app_filmes/services/login/login_service_impl.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  static const NAVIGATOR_KEY = 1;
  static const INDEX_PAGE_KEY = 2;
  final LoginServiceImpl _loginService;

  HomeController({required LoginServiceImpl loginService})
      : _loginService = loginService;

  final _pages = ['/movies', '/favorites'];

  final _pageIndex = 0.obs;

  int get pageIndex => _pageIndex.value;

  void goToPage(int page) {
    _pageIndex(page);
    if (page == INDEX_PAGE_KEY) {
      _loginService.logout();
    } else {
      Get.offNamed(_pages[page], id: NAVIGATOR_KEY);
    }
  }
}
