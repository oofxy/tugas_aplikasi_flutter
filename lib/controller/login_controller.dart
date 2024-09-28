import 'package:get/get.dart';

class LoginController extends GetxController{
  var isObscured = true.obs;

  void obscured(){
    isObscured.value = !isObscured.value;
  }
}