import 'package:flutter/material.dart';
import 'package:login_app/models/ui_colors.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  static const double buttonPadding = 20.0;
  static const double buttonWidthMargin = 50.0;

  @override
  Widget build(BuildContext context) {
    UIColors colors = UIColors();
    return Container(
      decoration: BoxDecoration(
        color: colors.backgroundColor,
        image: const DecorationImage(
          image: ExactAssetImage('assets/background_welcome.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 400),
          Image.asset('assets/logo_welcome.png'),
          const SizedBox(height: 40),
          CustomButton(
            text: "Login",
            onPressed: () {},
            backgroundColor: colors.primaryButton,
            textColor: Colors.white,
          ),
          const SizedBox(height: 20),
          CustomButton(
            text: "Register",
            onPressed: () {},
            backgroundColor: Colors.white,
            textColor: Colors.black,
            outlined: true,
          ),
          const SizedBox(height: 40),
          CustomButton(
            text: "Continue as a Guest",
            onPressed: () {},
            backgroundColor: Colors.white,
            textColor: Colors.black,
            padding: 15.0,
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;
  final bool outlined;
  final double padding;

  const CustomButton({
    required this.text,
    required this.onPressed,
    required this.backgroundColor,
    required this.textColor,
    this.outlined = false,
    this.padding = Welcome.buttonPadding,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - Welcome.buttonWidthMargin,
      child: outlined
          ? OutlinedButton(
              onPressed: onPressed,
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.all(padding),
                backgroundColor: backgroundColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(text, style: TextStyle(color: textColor)),
            )
          : ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(padding),
                backgroundColor: backgroundColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(text, style: TextStyle(color: textColor)),
            ),
    );
  }
}
