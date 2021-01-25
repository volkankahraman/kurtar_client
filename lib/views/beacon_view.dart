import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:im_animations/im_animations.dart';
import 'package:kurtar_client/controllers/beacon_controller.dart';

class BeaconView extends GetView<BeaconController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ColorSonar(
            // wavesDisabled: true,
            // waveMotion: WaveMotion.synced,
            innerWaveColor: Colors.red[500].withAlpha(50),
            middleWaveColor: Colors.red[500].withAlpha(50),
            outerWaveColor: Colors.red[500].withAlpha(50),
            contentAreaColor: Colors.red[500],
            contentAreaRadius: 150.0,
            waveFall: 80.0,
            duration: Duration(seconds: 7),
            waveMotion: WaveMotion.synced,
            // duration: Duration(seconds: 30),
            child: Hero(
              tag: 'emergency',
              child: CircleAvatar(
                backgroundColor: Colors.red[500],
                child: Text(
                  'Cevap Bekleniyor...',
                  style: TextStyle(color: Colors.white, fontSize: 22.0),
                ),
                radius: 150.0,
              ),
            )),
      ),
    );
  }
}

// SizedBox(
//             height: 250,
//             width: 250,
//             child: RawMaterialButton(
//               onPressed: () {},
//               elevation: 8.0,
//               fillColor: Colors.red[500],
//               shape: CircleBorder(),
//             ),
//           ),
