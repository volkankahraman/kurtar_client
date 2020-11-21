import 'package:flutter/material.dart';

import 'package:kurtar_client/controllers/register_controller.dart';

class RegisterThirdStep extends StatelessWidget {
  const RegisterThirdStep({
    Key key,
    @required this.controller,
    @required this.formKey,
  }) : super(key: key);

  final RegisterController controller;
  final formKey;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Şifreni belirleyebilirsin',
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
                controller.password.value = value;
              },
              cursorColor: Colors.white,
              cursorWidth: 2.0,
              cursorHeight: 24.0,
              textAlignVertical: TextAlignVertical.bottom,
              validator: (value) {
                if (value.length == 0) {
                  return 'Bu alan boş geçilemez';
                } else if (value.length < 6) {
                  return 'Şifre en az 6 karakter içermelidir';
                } else {
                  return null;
                }
              },
              obscureText: true,
              decoration: InputDecoration(
                errorStyle: TextStyle(color: Colors.red.shade200),
                hintText: 'Şifre',
                focusedBorder: UnderlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white, width: 2.0),
                ),
              ),
            ),
            SizedBox(height: 50.0),
            TextFormField(
              onChanged: (value) {
                controller.password.value = value;
              },
              cursorColor: Colors.white,
              cursorWidth: 2.0,
              cursorHeight: 24.0,
              textAlignVertical: TextAlignVertical.bottom,
              validator: (value) {
                if (value.length == 0) {
                  return 'Bu alan boş geçilemez';
                } else if (value.length < 6) {
                  return 'Şifre en az 6 karakter içermelidir';
                } else {
                  return null;
                }
              },
              obscureText: true,
              decoration: InputDecoration(
                errorStyle: TextStyle(color: Colors.red.shade200),
                hintText: 'Şifre Tekrarı',
                focusedBorder: UnderlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white, width: 2.0),
                ),
              ),
            ),
            SizedBox(height: 50.0),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     RaisedButton(
            //       child: Text("Geri"),
            //       color: Colors.green,
            //       onPressed: () {
            //         FocusScope.of(context).unfocus();
            //         controller.previousPage();
            //       },
            //     ),
            //     SizedBox(
            //       width: 30.0,
            //     ),
            //     RaisedButton(
            //       child: Text("Tamamla"),
            //       onPressed: () {
            //         FocusScope.of(context).unfocus();
            //         Get.offAllNamed(Routes.HOME);
            //       },
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
