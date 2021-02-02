import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kurtar_client/controllers/http_controller.dart';
import 'package:kurtar_client/routes/app_pages.dart';

class RegisterController extends GetxController {
  final step = 0.obs;
  final int stepLength = 3;
  final email = "".obs;
  final userType = "".obs;
  final fullName = "".obs;
  final username = "".obs;
  final male = false.obs;
  final female = false.obs;
  final phone = "".obs;
  final birthDate = "".obs;
  final password = "".obs;
  DateTime initialDate = DateTime(2000);
  HttpController httpController = Get.put(HttpController());

  PageController pageController = PageController();

  nextPage(context) {
    // pageController.nextPage(
    //   curve: Curves.easeIn,
    //   duration: Duration(milliseconds: 300),
    // );
    // return true;
    if (step < stepLength - 1) {
      step.value++;
    } else {
      register(context);
    }
  }

  previousPage() {
    // pageController.previousPage(
    //   curve: Curves.easeIn,
    //   duration: Duration(milliseconds: 300),
    // );
    if (step > 0) {
      step.value--;
    } else {
      Get.offAllNamed(Routes.REGISTER);
    }
  }

  changePage(int index) {
    step.value = index;
  }

  register(context) {
    print(email);
    print(username);
    print(fullName);
    print(_getGender());
    print(userType.value);
    print(phone);
    print(birthDate);
    print(password);
    httpController.register(
      context,
      email: email.value,
      fullName: fullName.value,
      // gender: _getGender(),
      password: password.value,
      // phone: phone.value,
      username: username.value,
      userType: userType.value,
    );
  }

  selectMale(value) {
    female.value = false;
    male.value = !male.value;
  }

  selectFemale(value) {
    male.value = false;
    female.value = !female.value;
  }

  String _getGender() {
    if (male.value) return 'ERKEK';
    if (female.value)
      return 'KADIN';
    else
      return 'HATA';
  }

  showBirthDatePicker(context) async {
    DateTime date = await showDatePicker(
      context: context,
      locale: Locale("tr", ""),
      initialDate: initialDate,
      firstDate: DateTime(1920),
      lastDate: DateTime(2004),
    );
    try {
      if (date != null) {
        initialDate = date;
        birthDate.value =
            "${date.day.toString().padLeft(2, '0')}/${date.month.toString().padLeft(2, '0')}/${date.year.toString()}";
        print(birthDate);
      }
    } catch (e) {}
  }

  // @override
  // void onInit() {}

  @override
  void onReady() {
    super.onReady();
    print(Get.arguments);
    if (Get.arguments != null) {
      this.userType.value = Get.arguments;
    } else {
      this.userType.value = "CITIZEN";
    }
  }

  @override
  void onClose() {}
}
