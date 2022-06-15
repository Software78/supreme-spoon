import 'package:flutter/material.dart';
import 'package:taska/views/home_screen_view/home_screen_view.dart';
import '../../utils/device_size.dart';
import '../../utils/spacer.dart';
import '../../widgets/buttons/buttons.dart';
import '../../widgets/text_widget/text_widget.dart';
import '../../widgets/textfield/reusableinputfield.dart';
import '../forgot_password_view/forgot_password_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  static const String id = 'loginView';

  @override
  Widget build(BuildContext context) {
    Size size = getDeviceSize(context);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AddVerticalSpace(height: size.height * 0.1),
              const LargeHeader(text: 'Welcome'),
              const AddVerticalSpace(height: 10),
              const MediumGrayedText(text: 'Sign in to continue'),
              const AddVerticalSpace(height: 20),
              const MediumSizedText(text: 'Username'),
              ReusableInputField(autoFocus: true),
              const AddVerticalSpace(height: 20),
              const MediumSizedText(text: 'Password'),
              ReusableInputField(),
              const AddVerticalSpace(height: 20),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, ForgotPassword.id),
                child: const Align(
                  alignment: Alignment.centerRight,
                  child: MediumGrayedText(text: 'Forgot password'),
                ),
              ),
              const AddVerticalSpace(height: 20),
              ExpandedButton(
                text: 'login',
                onPressed: () => Navigator.pushReplacementNamed(
                  context,
                  HomeScreen.id,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
