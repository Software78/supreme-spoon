import 'package:flutter/material.dart';
import 'package:taska/utils/colors.dart';
import 'package:taska/widgets/text_widget/text_widget.dart';

PreferredSizeWidget? getAppBar({
  String? title,
  List<Widget>? actions,
}) {
  return AppBar(
    elevation: 0,
    backgroundColor: secondaryColor,
    iconTheme: IconThemeData(color: primaryColor),
    actions: actions ?? [],
    title: MediumSizedText(text: title ?? ''),
  );
}
