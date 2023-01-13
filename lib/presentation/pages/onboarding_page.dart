import 'package:ecommerce_app_flutter/app/theme/app_color.dart';
import 'package:ecommerce_app_flutter/presentation/pages/login_page.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: AppColor.primary1, body: _body(context));
  }

  Widget _body(BuildContext _) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: ListView(
        children: [
          const SizedBox(height: 20),
          _promotionalText(),
          _onboardingImage(),
          const SizedBox(height: 20),
          _button(_)
        ],
      ),
    );
  }

  Widget _promotionalText() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.center,
      width: double.infinity,
      child: Text("Find Your Gadget",
          style: TextStyle(
              fontSize: 65,
              fontWeight: FontWeight.w800,
              color: AppColor.white)),
    );
  }

  Widget _onboardingImage() {
    return Image.asset("assets/images/image2.png");
  }

  Widget _button(BuildContext _) {
    return CustomButton(
        text: "Get Started",
        type: ButtonType.secondary,
        onTap: () {
          Navigator.push(
              _, MaterialPageRoute(builder: (_) => const LoginPage()));
        });
  }
}
