import 'package:flutter/material.dart';
import 'package:tugas_aplikasi_musik/colors/color.dart';
import 'package:tugas_aplikasi_musik/widgets/button.dart';
import 'package:tugas_aplikasi_musik/widgets/text_field.dart';
import 'package:tugas_aplikasi_musik/controller/login_controller.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _email = TextEditingController();
    final TextEditingController _password = TextEditingController();

    final LoginController loginController = Get.put(LoginController());

    return Obx(() {
      return Scaffold(
        backgroundColor: color().black,
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              Container(
                  margin: EdgeInsets.only(right: 40, left: 40),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Login",
                          style: TextStyle(
                              fontFamily: 'LexendDeca',
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                              fontSize: 47),
                        ),
                      ])),
              Container(
                margin: EdgeInsets.only(right: 40, left: 40),
                child: Column(
                  children: [
                    Text(
                      "If you already have an account you could just login with your email, or with your google account",
                      style: TextStyle(
                          fontFamily: 'LexendDeca',
                          color: Colors.white,
                          fontSize: 14),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Stack(children: [
                Container(
                  height: 563,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: color().black2,
                    // Background color
                    borderRadius:
                        BorderRadius.circular(15.0), // Rounded corners
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 40, left: 40, top: 18),
                  child: Column(children: [
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Text(
                        'Email',
                        style: TextStyle(
                            fontSize: 22,
                            fontFamily: 'LexendDeca',
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ]),
                    SizedBox(
                      height: 3,
                    ),
                    MyTextField(
                      controller: _email,
                        hintText: "e.g. user123@gmail.com",
                        textColor: Colors.white,
                        backgroundColor: color().black,
                        isObscured: false,
                        hintTextColor: color().greyTextColor,
                        height: 60,
                        width: double.infinity),
                    SizedBox(
                      height: 13,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Text(
                        'Password',
                        style: TextStyle(
                            fontSize: 22,
                            fontFamily: 'LexendDeca',
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ]),
                    SizedBox(
                      height: 3,
                    ),
                    MyTextField(
                      controller: _password,
                        hintText: "e.g. user123",
                        textColor: Colors.white,
                        backgroundColor: color().black,
                        isObscured: loginController.isObscured.value,
                        iconShow: Icons.remove_red_eye_outlined,
                        iconHide: Icons.visibility_off_outlined,
                        onPressed: () {
                          loginController.obscured();
                        },
                        hintTextColor: color().greyTextColor,
                        height: 60,
                        width: double.infinity),
                    SizedBox(
                      height: 45,
                    ),
                    MyButton(
                      text: "LogIn",
                      textColor: Colors.black,
                      backgroundColor: Colors.white,
                      onPressed: () {
                        String email = _email.text;
                        String password = _password.text;

                        if (email == "admin" && password == "admin123"){
                          Get.toNamed('/dashboard');
                        }
                      },
                      width: 370,
                      height: 45,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      outlinedColor: Colors.white,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    MyButton(
                      text: "Continue with Google",
                      textColor: Colors.white,
                      backgroundColor: color().black,
                      onPressed: () {},
                      width: 370,
                      height: 45,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      outlinedColor: Colors.white,
                    ),
                  ]),
                ),
              ]),
            ],
          ),
        ),
      );
    });
  }
}
