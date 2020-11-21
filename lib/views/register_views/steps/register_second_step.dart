import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:kurtar_client/controllers/register_controller.dart';
import 'package:kurtar_client/shared/always_disabled_focus.dart';

class RegisterSecondStep extends StatelessWidget {
  const RegisterSecondStep({
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
              'Detaylar',
              style: TextStyle(
                fontFamily: 'Lato',
                fontSize: 28,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Obx(
              () => Row(
                children: [
                  Expanded(
                    child: CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      onChanged: (value) {
                        controller.selectMale(value);
                      },
                      value: controller.male.value,
                      title: Text("Erkek"),
                    ),
                  ),
                  Expanded(
                    child: CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      onChanged: (value) {
                        controller.selectFemale(value);
                      },
                      title: Text("Kadın"),
                      value: controller.female.value,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            TextFormField(
              onChanged: (value) {
                controller.phone.value = value;
              },
              initialValue: controller.phone.value ?? "5",
              maxLength: 10,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly,
              ],

              cursorColor: Colors.white,
              cursorWidth: 2.0,
              cursorHeight: 24.0,
              scrollPadding: const EdgeInsets.only(bottom: 200.0),
              textAlignVertical: TextAlignVertical.bottom,
              decoration: InputDecoration(
                errorStyle: TextStyle(color: Colors.red.shade200),
                hintText: 'Cep Telefonu (5565884798)',
                focusedBorder: UnderlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white, width: 2.0),
                ),
              ),
              keyboardType: TextInputType.phone,

              // autofocus: true,
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
              height: 50.0,
            ),
            Obx(
              () => TextFormField(
                enableInteractiveSelection:
                    false, // will disable paste operation
                focusNode: AlwaysDisabledFocusNode(),
                onTap: () {
                  controller.showBirthDatePicker(context);
                },
                // initialValue: controller.birthDate.value ?? "21",

                controller:
                    TextEditingController(text: controller.birthDate.value),
                cursorColor: Colors.white,
                cursorWidth: 2.0,
                cursorHeight: 24.0,
                textAlignVertical: TextAlignVertical.bottom,
                decoration: InputDecoration(
                  errorStyle: TextStyle(color: Colors.red.shade200),
                  hintText: 'Doğum Tarihi',
                  focusedBorder: UnderlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.white, width: 2.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 50.0),
          ],
        ),
      ),
    );
  }
}
