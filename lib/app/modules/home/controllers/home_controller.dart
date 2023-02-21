// ignore_for_file: unnecessary_overrides
import 'dart:async';

import 'package:get/get.dart';
import 'package:project_ujikom/app/modules/login/views/login_view.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    Timer.periodic(
      const Duration(seconds: 4),
      (timer) => Get.to(const LoginView()),
    );
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
