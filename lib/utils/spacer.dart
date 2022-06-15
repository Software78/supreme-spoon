import 'package:flutter/material.dart';

class AddVerticalSpace extends StatelessWidget {
  const AddVerticalSpace({
    Key? key,
    this.height = 0,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}

class AddHorizontalSpace extends StatelessWidget {
  const AddHorizontalSpace({
    Key? key,
    this.width = 0,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
    );
  }
}
