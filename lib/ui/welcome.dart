import 'package:flutter/material.dart';
import 'package:login_app/models/ui_colors.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    UIColors colors = UIColors();
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          color: colors.backgroundColor,
          image: const DecorationImage(
              image: ExactAssetImage('assets/background_welcome.png'),
              fit: BoxFit.cover)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 400),
          Image.asset(
            'assets/logo_welcome.png',
          ),
          const SizedBox(height: 40),
          SizedBox(
            width: size.width - 50,
            child: ElevatedButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: colors.primaryButton,
                padding: const EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                "Login",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: size.width - 50,
            child: OutlinedButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                padding: const EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                "Register",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          const SizedBox(height: 40),
          SizedBox(
            width: size.width - 50,
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                padding: const EdgeInsets.all(15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                "Continue as a Guest",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
