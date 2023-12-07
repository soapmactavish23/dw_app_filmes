import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthService extends GetxService {
  User? user;

  void init() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      this.user = user;
      if (user == null) {
        //TODO: Modificar aqui ao chegar em casa
        Get.offAllNamed('/home');
      } else {
        Get.offAllNamed('/login');
      }
    });
  }
}