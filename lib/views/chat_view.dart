import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/bubble_type.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_4.dart';
import 'package:kurtar_client/controllers/user_controller.dart';
import 'package:get/get.dart';
import 'package:kurtar_client/app/modules/nearCitizens/controllers/near_citizens_controller.dart';
import 'package:kurtar_client/controllers/beacon_controller.dart';
import 'package:kurtar_client/controllers/chat_controller.dart';

class ChatView extends GetView {
  final ChatController cc = Get.put(ChatController());
  final BeaconController bc = Get.put(BeaconController());
  final NearCitizensController ncc = Get.put(NearCitizensController());
  final UserController uc = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: uc.user.value.userType == 'CITIZEN'
            ? Text('Çevrende Biri Var')
            : Text('Kazazede'),
        centerTitle: true,
      ),
      body: Obx(
        () => ListView.builder(
          shrinkWrap: true,
          itemCount: cc.messages.length,
          itemBuilder: (context, i) => ChatBubble(
            clipper: ChatBubbleClipper4(
              type: cc.messages[i].senderType == 'SENDER'
                  ? BubbleType.sendBubble
                  : BubbleType.receiverBubble,
            ),
            alignment: cc.messages[i].senderType == 'SENDER'
                ? Alignment.topRight
                : Alignment.topLeft,
            margin: EdgeInsets.only(top: 20),
            backGroundColor: cc.messages[i].senderType == 'SENDER'
                ? Colors.blue
                : Colors.green,
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
                onFieldSubmitted: (text) {
                  cc.addMessage(text: text, senderType: 'SENDER');
                  if (uc.user.value.userType == 'CITIZEN') {
                    bc.sendMessage(text);
                  } else {
                    ncc.sendMessage(text);
                  }
                },
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () {
              cc.addMessage(text: cc.tec.text, senderType: 'SENDER');
              if (uc.user.value.userType == 'CITIZEN') {
                bc.sendMessage(cc.tec.text);
              } else {
                ncc.sendMessage(cc.tec.text);
              }
            },
          ),
        ],
      ),
    );
  }
}
