import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:kurtar_client/controllers/http_controller.dart';
import 'package:kurtar_client/controllers/login_form_controller.dart';
import 'package:kurtar_client/routes/app_pages.dart';

class LoginFormView extends GetView {
  @override
  Widget build(BuildContext context) {
    LoginFormController _controller = Get.put(LoginFormController());
    HttpController _loginController = Get.put(HttpController());
    final node = FocusScope.of(context);

    return Scaffold(
      body: Container(
        // decoration: BoxDecoration(
        //   gradient: LinearGradient(
        //     begin: Alignment(0.0, -1.0),
        //     end: Alignment(0.0, 1.0),
        //     colors: [
        //       const Color(0xff677bff),
        //       const Color(0xff8b68ff),
        //       const Color(0xff537bff)
        //     ],
        //     stops: [0.0, 0.201, 1.0],
        //   ),
        // ),
        padding: const EdgeInsets.all(30.0),
        child: SafeArea(
          child: FormWidget(
              controller: _controller,
              node: node,
              loginController: _loginController),
        ),
      ),
    );
  }
}

class FormWidget extends StatefulWidget {
  const FormWidget({
    Key key,
    @required LoginFormController controller,
    @required this.node,
    @required HttpController loginController,
  })  : _controller = controller,
        _loginController = loginController,
        super(key: key);

  final LoginFormController _controller;
  final FocusScopeNode node;
  final HttpController _loginController;

  @override
  _FormWidgetState createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: SizedBox(
              height: 30.0,
            ),
          ),
          Text(
            'Hoşgeldin',
            style: TextStyle(
              fontFamily: 'Lato',
              fontSize: 28,
              fontWeight: FontWeight.w800,
            ),
          ),
          Spacer(),
          TextFormField(
            onChanged: (value) {
              widget._controller.email.value = value;
            },
            cursorColor: Colors.white,
            cursorWidth: 2.0,
            cursorHeight: 24.0,
            textAlignVertical: TextAlignVertical.bottom,
            decoration: InputDecoration(
              errorStyle: TextStyle(color: Colors.red.shade200),
              hintText: 'Email',
              focusedBorder: UnderlineInputBorder(
                borderSide: const BorderSide(color: Colors.white, width: 2.0),
              ),
            ),
            keyboardType: TextInputType.emailAddress,
            onEditingComplete: () => widget.node.nextFocus(),
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
            scrollPadding: const EdgeInsets.only(bottom: 20.0),
            onChanged: (value) {
              widget._controller.password.value = value;
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
              if (_formKey.currentState.validate())
                widget._loginController.login(
                  context,
                  username: widget._controller.email.value,
                  password: widget._controller.password.value,
                );
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
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 40.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0),
                ),
                onPressed: () {
                  if (_formKey.currentState.validate())
                    widget._loginController.login(
                      context,
                      username: widget._controller.email.value,
                      password: widget._controller.password.value,
                    );
                },
                child: Text(
                  'Giriş Yap',
                  style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Spacer(),
              RaisedButton(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 40.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0),
                ),
                onPressed: () {
                  Get.toNamed(Routes.REGISTER);
                },
                color: Colors.red[500],
                child: Text(
                  'Üye Ol',
                  style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}
