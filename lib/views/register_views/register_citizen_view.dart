import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kurtar_client/controllers/register_controller.dart';
import 'package:kurtar_client/routes/app_pages.dart';
import 'package:kurtar_client/shared/always_disabled_focus.dart';

class RegisterCitizenView extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (controller.pageController.page == 0.0) {
          return true;
        } else {
          controller.previousPage();
          return false;
        }
      },
      child: Scaffold(
        // extendBodyBehindAppBar: true,
        // appBar: AppBar(
        //   // title: Text("Üye Seçimi"),
        //   // centerTitle: true,
        //   backgroundColor: Colors.transparent,
        // ),
        body: SafeArea(
          child: PageView(
            physics: NeverScrollableScrollPhysics(),
            controller: controller.pageController,
            children: [
              SingleChildScrollView(
                child: Container(
                  padding:
                      const EdgeInsets.only(top: 50.0, left: 12.0, right: 12.0),
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
                          // widget._controller.email.value = value;
                        },
                        cursorColor: Colors.white,
                        cursorWidth: 2.0,
                        cursorHeight: 24.0,
                        textAlignVertical: TextAlignVertical.bottom,
                        decoration: InputDecoration(
                          errorStyle: TextStyle(color: Colors.red.shade200),
                          hintText: 'Email',
                          focusedBorder: UnderlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.white, width: 2.0),
                          ),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        // onEditingComplete: () => widget.node.nextFocus(),
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
                          // widget._controller.password.value = value;
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
                        onFieldSubmitted: (_) {
                          // if (_formKey.currentState.validate())
                          //   widget._loginController.login(
                          //     context,
                          //     username: widget._controller.email.value,
                          //     password: widget._controller.password.value,
                          //   );
                        },
                        decoration: InputDecoration(
                          errorStyle: TextStyle(color: Colors.red.shade200),
                          hintText: 'Ad Soyad',
                          focusedBorder: UnderlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.white, width: 2.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      TextFormField(
                        onChanged: (value) {
                          // widget._controller.password.value = value;
                        },
                        cursorColor: Colors.white,
                        cursorWidth: 2.0,
                        cursorHeight: 24.0,
                        scrollPadding: EdgeInsets.only(bottom: 120.0),
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
                        onFieldSubmitted: (_) {
                          // if (_formKey.currentState.validate())
                          //   widget._loginController.login(
                          //     context,
                          //     username: widget._controller.email.value,
                          //     password: widget._controller.password.value,
                          //   );
                        },
                        decoration: InputDecoration(
                          errorStyle: TextStyle(color: Colors.red.shade200),
                          hintText: 'Kullanıcı Adı',
                          focusedBorder: UnderlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.white, width: 2.0),
                          ),
                        ),
                      ),
                      SizedBox(height: 50.0),
                      RaisedButton(
                        child: Text("ileri"),
                        onPressed: () {
                          FocusScope.of(context).unfocus();
                          controller.nextPage();
                        },
                      ),
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  padding:
                      const EdgeInsets.only(top: 50.0, left: 12.0, right: 12.0),
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
                      Row(
                        children: [
                          Expanded(
                            child: CheckboxListTile(
                              controlAffinity: ListTileControlAffinity.leading,
                              onChanged: (_) {},
                              value: false,
                              title: Text("Erkek"),
                            ),
                          ),
                          Expanded(
                            child: CheckboxListTile(
                              controlAffinity: ListTileControlAffinity.leading,
                              onChanged: (_) {},
                              title: Text("Kadın"),
                              value: false,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 50.0,
                      ),
                      TextFormField(
                        onChanged: (value) {
                          // widget._controller.email.value = value;
                        },
                        cursorColor: Colors.white,
                        cursorWidth: 2.0,
                        cursorHeight: 24.0,
                        scrollPadding: const EdgeInsets.only(bottom: 200.0),
                        textAlignVertical: TextAlignVertical.bottom,
                        decoration: InputDecoration(
                          errorStyle: TextStyle(color: Colors.red.shade200),
                          hintText: 'Cep Telefonu',
                          focusedBorder: UnderlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.white, width: 2.0),
                          ),
                        ),
                        keyboardType: TextInputType.phone,
                        // onEditingComplete: () => widget.node.nextFocus(),
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
                      TextFormField(
                        enableInteractiveSelection:
                            false, // will disable paste operation
                        focusNode: AlwaysDisabledFocusNode(),
                        onTap: () {
                          controller.showBirthDatePicker(context);
                        },

                        cursorColor: Colors.white,
                        cursorWidth: 2.0,
                        cursorHeight: 24.0,
                        textAlignVertical: TextAlignVertical.bottom,
                        decoration: InputDecoration(
                          errorStyle: TextStyle(color: Colors.red.shade200),
                          hintText: 'Doğum Tarihi',
                          focusedBorder: UnderlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.white, width: 2.0),
                          ),
                        ),
                      ),
                      SizedBox(height: 50.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: RaisedButton(
                              child: Text("Geri"),
                              color: Colors.green,
                              onPressed: () {
                                FocusScope.of(context).unfocus();
                                controller.previousPage();
                              },
                            ),
                          ),
                          SizedBox(
                            width: 30.0,
                          ),
                          Expanded(
                            child: RaisedButton(
                              child: Text("ileri"),
                              onPressed: () {
                                FocusScope.of(context).unfocus();
                                controller.nextPage();
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  padding:
                      const EdgeInsets.only(top: 50.0, left: 12.0, right: 12.0),
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
                          // widget._controller.password.value = value;
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
                        onFieldSubmitted: (_) {
                          // if (_formKey.currentState.validate())
                          //   widget._loginController.login(
                          //     context,
                          //     username: widget._controller.email.value,
                          //     password: widget._controller.password.value,
                          //   );
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          errorStyle: TextStyle(color: Colors.red.shade200),
                          hintText: 'Şifre',
                          focusedBorder: UnderlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.white, width: 2.0),
                          ),
                        ),
                      ),
                      SizedBox(height: 50.0),
                      TextFormField(
                        onChanged: (value) {
                          // widget._controller.password.value = value;
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
                        onFieldSubmitted: (_) {
                          // if (_formKey.currentState.validate())
                          //   widget._loginController.login(
                          //     context,
                          //     username: widget._controller.email.value,
                          //     password: widget._controller.password.value,
                          //   );
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          errorStyle: TextStyle(color: Colors.red.shade200),
                          hintText: 'Şifre Tekrarı',
                          focusedBorder: UnderlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.white, width: 2.0),
                          ),
                        ),
                      ),
                      SizedBox(height: 50.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RaisedButton(
                            child: Text("Geri"),
                            color: Colors.green,
                            onPressed: () {
                              FocusScope.of(context).unfocus();
                              controller.previousPage();
                            },
                          ),
                          SizedBox(
                            width: 30.0,
                          ),
                          RaisedButton(
                            child: Text("Tamamla"),
                            onPressed: () {
                              FocusScope.of(context).unfocus();
                              Get.offAllNamed(Routes.HOME);
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
