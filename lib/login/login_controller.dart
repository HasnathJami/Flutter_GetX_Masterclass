import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController().obs;
  Rx<TextEditingController> passwordController = TextEditingController().obs;
  RxBool isLoading = false.obs;

  Future loginApi() async {
    isLoading.value = true;

    Map loginData = {
      'email': emailController.value.text,
      'password': passwordController.value.text
    };
    try {
      final response =
          await post(Uri.parse("https://reqres.in/api/login"), body: loginData);

      // final response = await post(Uri.parse("https://reqres.in/api/login"), body: jsonEncode(loginData)); // for raw data



      var data = jsonDecode(response.body);
      print(response.statusCode);
      print(data);

      if (response.statusCode == 200) {
        isLoading.value = false;
        Get.snackbar('Login successful', 'Congratulations');
      } else {
        isLoading.value = false;
        Get.snackbar('Login Failed', data['error']);
      }
    } catch (e) {
      isLoading.value = false;
      Get.snackbar("Exception", e.toString());
    }
  }
}
