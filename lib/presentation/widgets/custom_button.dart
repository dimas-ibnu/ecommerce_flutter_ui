import 'package:ecommerce_app_flutter/app/theme/app_color.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.text, this.type, this.height = 60, this.onTap});

  final String text;
  final ButtonType? type;
  final double? height;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    if (type == ButtonType.secondary) {
      return InkWell(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          height: height,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 14),
          decoration: BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: AppColor.white.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ]),
          child: Text(
            text,
            style: TextStyle(
                color: AppColor.primary1,
                fontSize: 18,
                fontWeight: FontWeight.w700),
          ),
        ),
      );
    } else {
      return InkWell(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          height: height,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 14),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: AppColor.primary1.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            color: AppColor.primary1,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            text,
            style: TextStyle(
                color: AppColor.white,
                fontSize: 18,
                fontWeight: FontWeight.w700),
          ),
        ),
      );
    }
  }
}

enum ButtonType { primary, secondary }
