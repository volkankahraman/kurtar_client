import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/bubble_type.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_4.dart';

import 'package:get/get.dart';
import 'package:kurtar_client/controllers/chat_controller.dart';

class ChatView extends GetView {
  ChatController cc = Get.put(ChatController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Çevrende Biri Var'),
        centerTitle: true,
      ),
      body: Obx(
        () => ListView.builder(
          shrinkWrap: true,
          itemCount: cc.messages.length,
          itemBuilder: (context, i) => ChatBubble(
            clipper: ChatBubbleClipper4(type: BubbleType.sendBubble),
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(top: 20),
            backGroundColor: Colors.blue,
            child: Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.7,
              ),
              child: Text(
                cc.messages[i].text,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),

          // Container(
          //   constraints: BoxConstraints.tightForFinite(),
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(10),
          //     boxShadow: [
          //       BoxShadow(color: Colors.green, spreadRadius: 3),
          //     ],
          //   ),
          //   height: 50.0,
          //   width: 100.0,
          //   child: Text('Selam'),
          // )
        ),
      ),
      bottomNavigationBar: Row(
        children: [
          Expanded(
            child: Container(
              child: TextFormField(
                controller: cc.tec,
                cursorColor: Colors.white,
                cursorWidth: 2.0,
                cursorHeight: 24.0,
                textAlignVertical: TextAlignVertical.bottom,
                decoration: InputDecoration(
                  hintText: 'Mesaj...',
                  focusedBorder: UnderlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.white, width: 2.0),
                  ),
                ),
                autofocus: true,
                onFieldSubmitted: (_) {
                  cc.addMessage();
                },
              ),
            ),
          ),
          IconButton(icon: Icon(Icons.send), onPressed: cc.addMessage),
        ],
      ),
    );
  }
}
