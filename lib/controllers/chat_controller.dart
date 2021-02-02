import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:kurtar_client/models/message.dart';

class ChatController extends GetxController {
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

  void addMessage({text: String, senderType: String}) {
    messages.add(
      Message(
        senderType: senderType,
        text: text,
      ),
    );
    tec.clear();
  }

  @override
  void onClose() {}
}
