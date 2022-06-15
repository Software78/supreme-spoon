import 'package:flutter/material.dart';
import 'package:taska/utils/appbar.dart';
import 'package:taska/utils/colors.dart';
import 'package:taska/utils/device_size.dart';
import 'package:taska/utils/spacer.dart';
import 'package:taska/views/reset_password_view/reset_password_view.dart';
import 'package:taska/widgets/buttons/buttons.dart';
import 'package:taska/widgets/text_widget/text_widget.dart';
import 'package:taska/widgets/textfield/reusableinputfield.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  static const String id = 'forgotPassword';

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
            AddVerticalSpace(height: size.height * 0.04),
            const LargeHeader(text: 'Forgot Password'),
            const AddVerticalSpace(height: 10),
            const MediumGrayedText(
                text:
                    'Please enter your email below to \nreceive password reset instructions'),
            const AddVerticalSpace(
              height: 10,
            ),
            const MediumSizedText(text: 'email'),
            ReusableInputField(
              autoFocus: true,
            ),
            const AddVerticalSpace(height: 10),
            ExpandedButton(
              text: 'reset password',
              onPressed: () => Navigator.pushNamed(
                context,
                ResetPasswordView.id,
              ),
            )
          ],
        ),
      ),
    );
  }
}
