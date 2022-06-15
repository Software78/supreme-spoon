import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class ReusableInputField extends StatelessWidget {
   ReusableInputField({
    Key? key,
    this.autoFocus = false,
  }) : super(key: key);

  bool autoFocus;

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: autoFocus ,
      cursorColor: primaryColor,
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: primaryColor),
        ),
      ),
    );
  }
}
