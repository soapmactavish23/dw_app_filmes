import 'package:app_filmes/application/ui/loader/loader_mixin.dart';
import 'package:app_filmes/application/ui/messages/messages_mixin.dart';
import 'package:app_filmes/services/login/login_service_impl.dart';
import 'package:get/get.dart';

class LoginController extends GetxController with LoaderMixin, MessagesMixin {
  final LoginServiceImpl _loginService;
  final loading = false.obs;
  final message = Rxn<MessageModel>();

  LoginController({required LoginServiceImpl loginService})
      : _loginService = loginService;

  @override
  void onInit() {
    super.onInit();
    loaderListener(loading);
    messageListener(message);
  }

  Future<void> login() async {
    try {
      loading.value = true;
      await _loginService.login();
      loading.value = false;
      message(MessageModel.info(
          title: 'Sucesso', message: 'Login Realizado com Sucesso'));
    } catch (e, s) {
      print(e);
      print(s);
      loading.value = false;
      message(MessageModel.error(
          title: 'Login Erro', message: 'Erro ao realizar login'));
    }
  }
}
