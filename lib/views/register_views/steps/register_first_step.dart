import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import 'package:kurtar_client/controllers/register_controller.dart';

class RegisterFirstStep extends StatelessWidget {
  const RegisterFirstStep({
    Key key,
    @required this.controller,
    @required this.formKey,
  }) : super(key: key);

  final RegisterController controller;
  final formKey;

  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);

    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Hadi Başlayalım…',
              style: TextStyle(
                fontFamily: 'Lato',
                fontSize: 28,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            TextFormField(
              onChanged: (value) {
                controller.email.value = value;
              },
              initialValue: controller.email.value,
              cursorColor: Colors.white,
              cursorWidth: 2.0,
              cursorHeight: 24.0,
              textAlignVertical: TextAlignVertical.bottom,
              decoration: InputDecoration(
                errorStyle: TextStyle(color: Colors.red.shade200),
                labelText: "Email",
                hintText: 'Email',
                focusedBorder: UnderlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white, width: 2.0),
                ),
              ),
              keyboardType: TextInputType.emailAddress,
              onEditingComplete: () => node.nextFocus(),
              autofocus: true,
              validator: (value) {
                if (value.length == 0) {
                  return 'Bu alan boş geçilemez';
                } else if (!GetUtils.isEmail(value)) {
                  return 'Lütfen geçerli bir email girin';
                } else {
                  return null;
                }
              },
            ),
            SizedBox(
              height: 30.0,
            ),
            TextFormField(
              onChanged: (value) {
                controller.fullName.value = value;
              },
              initialValue: controller.fullName.value,
              onEditingComplete: () => node.nextFocus(),
              cursorColor: Colors.white,
              cursorWidth: 2.0,
              cursorHeight: 24.0,
              textAlignVertical: TextAlignVertical.bottom,
              validator: (value) {
                if (value.length == 0) {
                  return 'Bu alan boş geçilemez';
                } else if (value.length < 3) {
                  return 'Ad Soyad en az 3 karakterden fazla olmalıdır';
                } else {
                  return null;
                }
              },
              decoration: InputDecoration(
                errorStyle: TextStyle(color: Colors.red.shade200),
                labelText: "Ad Soyad",
                hintText: 'Ad Soyad',
                focusedBorder: UnderlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white, width: 2.0),
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            TextFormField(
              onChanged: (value) {
                controller.username.value = value;
              },
              initialValue: controller.username.value,
              cursorColor: Colors.white,
              cursorWidth: 2.0,
              cursorHeight: 24.0,
              scrollPadding: EdgeInsets.only(bottom: 120.0),
              textAlignVertical: TextAlignVertical.bottom,
              validator: (value) {
                if (value.length == 0) {
                  return 'Bu alan boş geçilemez';
                } else if (value.length < 3) {
                  return 'Kullanıcı adı en az 3 karakterden fazla olmalıdır';
                } else {
                  return null;
                }
              },
              onFieldSubmitted: (_) {
                formKey.currentState.validate();
              },
              decoration: InputDecoration(
                errorStyle: TextStyle(color: Colors.red.shade200),
                labelText: 'Kullanıcı Adı',
                hintText: 'Kullanıcı Adı',
                focusedBorder: UnderlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white, width: 2.0),
                ),
              ),
            ),
            SizedBox(height: 50.0),
            // RaisedButton(
            //   child: Text("ileri"),
            //   onPressed: () {
            //     FocusScope.of(context).unfocus();
            //     controller.nextPage();
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
