import 'package:app_filmes/application/ui/loader/loader_mixin.dart';
import 'package:get/get.dart';

class LoginController extends GetxController with LoaderMixin {
  final loading = false.obs;

  @override
  void onInit() {
    super.onInit();
    loaderListener(loading);
  }

  Future<void> login() async {
    loading.value = true;
    await Future.delayed(const Duration(seconds: 2));
    loading.value = false;
  }
}
