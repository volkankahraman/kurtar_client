import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

class AddHelperController extends GetxController {
  Iterable<Contact> contacts;
  RxList<Contact> contacList = [Contact()].obs;
  RxList<String> savedList = [""].obs;
  TextEditingController tec = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    contacList[0].phones = [];
    _getContacts();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void _getContacts() async {
    if (await Permission.contacts.request().isGranted) {
      contacts = await ContactsService.getContacts(withThumbnails: false);
      contacList.clear();
      contacts.forEach((element) {
        contacList.add(element);
      });
    } else {
      await Permission.contacts.request();
    }
  }

  void setValueOfField(Contact person) {
    tec.text = person.phones.first.value;
  }

  void addToSavedList() {
    savedList.add(tec.text);
    tec.clear();
  }

  void removeFromSavedList(String savedValue) {
    savedList.remove(savedValue);
  }
}
