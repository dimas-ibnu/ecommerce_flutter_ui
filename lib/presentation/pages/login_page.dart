import 'package:ecommerce_app_flutter/app/theme/app_color.dart';
import 'package:ecommerce_app_flutter/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isShowPassword = false;

  @override
  void initState() {
    isShowPassword = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary1,
      body: _body(),
    );
  }

  _body() {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      children: [
        _infoText(),
        _loginForm(),
      ],
    );
  }

  _infoText() {
    return Container(
        height: MediaQuery.of(context).size.height * 0.3,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        child: Stack(
          children: [
            _circleShape(top: 20, left: 0),
            _circleShape(right: 0, bottom: 20),
            _circleShape(
                top: -40,
                right: 20,
                color: AppColor.cream,
                size: 100,
                opacity: 1),
            Positioned(
              top: 60,
              left: 20,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Text("Welcome back",
                    style: TextStyle(
                        fontSize: 65,
                        fontWeight: FontWeight.w800,
                        color: AppColor.white)),
              ),
            ),
          ],
        ));
  }

  _circleShape({
    double? top,
    double? left,
    double? right,
    double? bottom,
    Color? color,
    double? size,
    double? opacity,
  }) {
    return Positioned(
        right: right,
        bottom: bottom,
        top: top,
        left: left,
        child: Container(
            height: size ?? 50,
            width: size ?? 50,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: (color ?? AppColor.white).withOpacity(opacity ?? 0.3))));
  }

  _loginForm() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      height: MediaQuery.of(context).size.height * 0.7,
      decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(20),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40),
          Text("Login",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                  color: AppColor.black)),
          SizedBox(height: 20),
          _customField(
            title: "Email",
            icon: IconlyLight.message,
            keyboardType: TextInputType.emailAddress,
          ),
          _customField(
            title: "Password",
            icon: IconlyLight.lock,
            isPassword: true,
            showPassword: () {
              setState(() {
                isShowPassword = !isShowPassword;
              });
            },
            keyboardType: TextInputType.visiblePassword,
          ),
          _forgotPasswordButton(),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: CustomButton(
              text: "Login",
            ),
          ),
          _createAccountButton()
        ],
      ),
    );
  }

  _customField(
      {required String title,
      required IconData icon,
      bool isPassword = false,
      Function()? showPassword,
      TextInputType keyboardType = TextInputType.text}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Row(
            children: [Icon(icon), const SizedBox(width: 10), Text(title)],
          ),
          Container(
            decoration: BoxDecoration(
              color: AppColor.white,
            ),
            child: TextField(
              keyboardType: keyboardType,
              obscureText: isPassword && !isShowPassword,
              decoration: InputDecoration(
                suffix: isPassword
                    ? IconButton(
                        onPressed: showPassword,
                        icon: !isShowPassword
                            ? Icon(IconlyLight.show)
                            : Icon(IconlyLight.hide))
                    : null,
                hintText: title,
                hintStyle: TextStyle(color: AppColor.grey),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _createAccountButton() {
    return Center(
      child: TextButton(
          onPressed: () {},
          child: Text(
            "Create Account",
            style: TextStyle(
                color: AppColor.primary1, fontWeight: FontWeight.w300),
          )),
    );
  }

  _forgotPasswordButton() {
    return TextButton(
        onPressed: () {},
        child: Text(
          "Forgot passcode?",
          style: TextStyle(
              color: AppColor.primary1, fontWeight: FontWeight.normal),
        ));
  }
}
