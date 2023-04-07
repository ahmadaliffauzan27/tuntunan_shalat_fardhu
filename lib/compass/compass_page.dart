import 'package:flutter/material.dart';
import 'package:smooth_compass/utils/src/compass_ui.dart';
import 'package:tuntunan_sholat/shared/theme.dart';

class CompassPage extends StatefulWidget {
  const CompassPage({Key? key}) : super(key: key);

  @override
  State<CompassPage> createState() => _CompassPageState();
}

class _CompassPageState extends State<CompassPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Arah Kiblat',
          style: appFont,
        ),
        backgroundColor: Colors.green,
      ),
      body: SmoothCompass(
        isQiblahCompass: true,
        compassBuilder: (context, snapshot, child) {
          return AnimatedRotation(
            duration: const Duration(milliseconds: 800),
            turns: snapshot?.data?.turns ?? 0,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Image.asset(
                    "assets/compass.png",
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: AnimatedRotation(
                    duration: const Duration(milliseconds: 500),
                    turns: (snapshot?.data?.qiblahOffset ?? 0) / 360,
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.arrow_right,
                        size: 50,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
