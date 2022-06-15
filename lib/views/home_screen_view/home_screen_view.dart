import 'package:flutter/material.dart';
import 'package:taska/utils/colors.dart';
import 'package:taska/utils/device_size.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const String id = 'homeScreen';

  @override
  Widget build(BuildContext context) {
    double width = getDeviceSize(context).width;
    return Scaffold(
      backgroundColor: secondaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
        child: Column(children: const []),
      ),
    );
  }
}
