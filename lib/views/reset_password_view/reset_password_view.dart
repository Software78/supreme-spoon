import 'package:flutter/material.dart';
import 'package:taska/utils/appbar.dart';
import 'package:taska/utils/colors.dart';
import 'package:taska/utils/device_size.dart';
import 'package:taska/utils/spacer.dart';
import 'package:taska/views/login_view/login_view.dart';
import 'package:taska/widgets/buttons/buttons.dart';
import 'package:taska/widgets/text_widget/text_widget.dart';

import '../../widgets/textfield/reusableinputfield.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({Key? key}) : super(key: key);

  static const String id = 'resetPasswordView';

  @override
  Widget build(BuildContext context) {
    Size size = getDeviceSize(context);

    return Scaffold(
      backgroundColor: secondaryColor,
      appBar: getAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AddVerticalSpace(
              height: size.height * 0.04,
            ),
            const LargeHeader(text: 'Reset password'),
            const AddVerticalSpace(
              height: 20,
            ),
            const MediumGrayedText(
                text:
                    'Reset code was sent to your email.\nPlease enter the code and create new password'),
            const AddVerticalSpace(height: 20),
            const MediumSizedText(text: 'Reset code'),
            ReusableInputField(autoFocus: true),
            const AddVerticalSpace(height: 10),
            const MediumSizedText(text: 'New password'),
            ReusableInputField(autoFocus: true),
            const AddVerticalSpace(height: 10),
            const MediumSizedText(text: 'Confirm password'),
            ReusableInputField(autoFocus: true),
            const AddVerticalSpace(height: 10),
            ExpandedButton(
              text: 'Reset Password',
              onPressed: () => Navigator.popUntil(
                context,
                ModalRoute.withName(LoginView.id),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
