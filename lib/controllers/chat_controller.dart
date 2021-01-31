import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kurtar_client/models/message.dart';

class ChatController extends GetxController {
  final user = "1111";

  final TextEditingController tec = TextEditingController();
  final RxList<Message> messages = RxList();
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  void addMessage() {
    messages.add(
      Message(
        sender: this.user,
        text: tec.text,
      ),
    );
    tec.clear();
  }

  @override
  void onClose() {}
}
