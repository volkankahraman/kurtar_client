import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kurtar_client/controllers/register_controller.dart';
import 'package:kurtar_client/routes/app_pages.dart';

class RegisterView extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Üyelik Seçimi"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Stack(
              children: [
                InkWell(
                  onTap: () {
                    Get.toNamed(Routes.REGISTERCITIZEN);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/citizens.jpg'),
                        colorFilter: new ColorFilter.mode(
                            Colors.black.withOpacity(0.4), BlendMode.dstATop),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.black,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      'VATANDAŞ',
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                InkWell(
                  onTap: () {
                    Get.toNamed(Routes.REGISTERSAVER);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/saver.jpg'),
                        fit: BoxFit.cover,
                        colorFilter: new ColorFilter.mode(
                            Colors.black.withOpacity(0.8), BlendMode.dstATop),
                      ),
                      color: Colors.black,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      'CANKURTARAN',
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// InkWell(
//   onTap: () {
//     Get.toNamed(Routes.REGISTERCITIZEN);
//   },
//   child: Container(
//     child: FractionallySizedBox(
//       heightFactor: 0.4,
//       child: Row(
//         children: [
//           Image(
//             image: AssetImage('assets/images/citizens.jpg'),
//           ),
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: Text(
//               'VATANDAŞ',
//               style: TextStyle(
//                 fontFamily: 'Lato',
//                 fontSize: 20,
//                 fontWeight: FontWeight.w700,
//               ),
//               textAlign: TextAlign.center,
//             ),
//           ),
//         ],
//       ),
//     ),
//   ),
// ),
// InkWell(
//   onTap: () {
//     Get.toNamed(Routes.REGISTERSAVER);
//   },
//   child: Container(
//     child: FractionallySizedBox(
//       heightFactor: 0.4,
//       child: Row(
//         children: [
//           Image(
//             image: AssetImage('assets/images/saver.jpg'),
//           ),
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: Text(
//               'CANKURTARAN',
//               style: TextStyle(
//                 fontFamily: 'Lato',
//                 fontSize: 20,
//                 fontWeight: FontWeight.w700,
//               ),
//               textAlign: TextAlign.center,
//             ),
//           ),
//         ],
//       ),
//     ),
//   ),
// ),
