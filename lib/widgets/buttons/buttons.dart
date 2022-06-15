import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../text_widget/text_widget.dart';

class ExpandedButton extends StatelessWidget {
  const ExpandedButton({
    Key? key,
    required this.text,
    this.onPressed,
  }) : super(key: key);

  final String text;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      minWidth: double.infinity,
      height: 48,
      color: primaryColor,
      child: MediumButtonText(
        text: text,
      ),
    );
  }
}
