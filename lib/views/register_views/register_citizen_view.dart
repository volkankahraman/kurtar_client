import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kurtar_client/controllers/register_controller.dart';
import 'package:kurtar_client/views/register_views/steps/register_first_step.dart';
import 'package:kurtar_client/views/register_views/steps/register_second_step.dart';
import 'package:kurtar_client/views/register_views/steps/register_third_step.dart';

class RegisterCitizenView extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    return WillPopScope(
      onWillPop: () async {
        // if (controller.pageController.page == 0.0) {
        //   return true;
        // } else {
        //   controller.previousPage();
        //   return false;
        // }
        return true;
      },
      child: Scaffold(
        body: Form(
          key: _formKey,
          child: SafeArea(
            child: Obx(
              () => Stepper(
                type: StepperType.horizontal,
                controlsBuilder: (context, {onStepContinue, onStepCancel}) =>
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
                        child: (2 != controller.step.value)
                            ? Text("İleri")
                            : Text('Tamamla'),
                        onPressed: () {
                          FocusScope.of(context).unfocus();
                          controller.nextPage(context);
                        },
                      ),
                    ),
                  ],
                ),
                currentStep: controller.step.value,
                onStepContinue: () {
                  controller.nextPage(context);
                },
                onStepCancel: () {
                  controller.previousPage();
                },
                onStepTapped: (index) {
                  controller.changePage(index);
                },

                // controlsBuilder: (context) => Text('a'),
                steps: [
                  Step(
                    title: Text('Hoşgeldin'),
                    state: controller.step.value == 0
                        ? StepState.editing
                        : StepState.indexed,
                    content: RegisterFirstStep(
                        controller: controller, formKey: _formKey),
                    isActive: controller.step.value == 0 ? true : false,
                  ),
                  Step(
                    title: Text('Detaylar'),
                    state: controller.step.value == 1
                        ? StepState.editing
                        : StepState.indexed,
                    isActive: controller.step.value == 1 ? true : false,
                    content: RegisterSecondStep(
                        controller: controller, formKey: _formKey),
                  ),
                  Step(
                    title: Text('Şifre Belirleme'),
                    state: controller.step.value == 2
                        ? StepState.editing
                        : StepState.indexed,
                    isActive: controller.step.value == 2 ? true : false,
                    content: RegisterThirdStep(
                        controller: controller, formKey: _formKey),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
