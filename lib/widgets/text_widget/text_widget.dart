import 'package:flutter/material.dart';
import 'package:taska/utils/colors.dart';

class LargeHeader extends StatelessWidget {
  const LargeHeader({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Text build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 32,
        color: defaultTextColor,
      ),
    );
  }
}

class MediumGrayedText extends StatelessWidget {
  const MediumGrayedText({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Text build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 16,
        color: greyTextColor,
      ),
    );
  }
}

class MediumButtonText extends StatelessWidget {
  const MediumButtonText({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Text build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 16,
        color: secondaryColor,
      ),
    );
  }
}

class MediumSizedText extends StatelessWidget {
  const MediumSizedText({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Text build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 16,
        color: defaultTextColor,
      ),
    );
  }
}
