import 'package:flutter/material.dart';
import 'package:flutter_getx_masterclass/login/login_controller.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: controller.emailController.value,
              decoration: InputDecoration(hintText: 'Email'),
            ),
            TextFormField(
              controller: controller.passwordController.value,
              decoration: InputDecoration(hintText: 'Password'),
            ),
            SizedBox(
              height: 50,
            ),
            Obx(() => InkWell(
                  onTap: () {
                    controller.loginApi();
                  },
                  child: controller.isLoading.value
                      ? CircularProgressIndicator()
                      : Container(
                          height: 45,
                          color: Colors.grey,
                          child: Center(
                            child: Text('Login'),
                          ),
                        ),
                ))
          ],
        ),
      ),
    );
  }
}
