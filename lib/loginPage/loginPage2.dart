import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:knowlumi/customwidget/customColor.dart';
import 'package:knowlumi/customwidget/customText.dart';
import 'package:knowlumi/otpPage/otpPage.dart';

class LoginPage2 extends StatelessWidget {
  const LoginPage2({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 21),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: screenHeight * 0.3), // Dynamic spacing

              const CustomText(
                text: "Welcome 👋🏼",
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: Color(0xff1F2D43),
              ),
              const SizedBox(height: 5),
              const CustomText(
                text: "Login to continue",
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff1F2D43),
              ),

              const SizedBox(height: 50),

              // Phone Number Input
              Row(
                children: [
                  // Country Code
                  SizedBox(
                    width: 60,
                    height: 54,
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 14, color: Color(0xff1F2D43)),
                      decoration: InputDecoration(
                        hintText: '+91',
                        filled: true,
                        fillColor: const Color(0xFFe4e4ec),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            bottomLeft: Radius.circular(16),
                          ),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 2),
                  // Mobile Number
                  Expanded(
                    child: SizedBox(
                      height: 54,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        style:
                            const TextStyle(fontSize: 14, color: Colors.black),
                        decoration: InputDecoration(
                          hintText: 'Enter mobile number',
                          filled: true,
                          fillColor: const Color(0xFFe4e4ec),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(16),
                              bottomRight: Radius.circular(16),
                            ),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // Continue Button
              SizedBox(
                width: double.infinity,
                height: 54,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                  onPressed: () {
                    Get.off(() => const Otppage());
                  },
                  child: Ink(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Customcolor.primaryLight,
                          Customcolor.primaryDark
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: const CustomText(
                        text: "Continue",
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(
                  height: screenHeight * 0.15), // Adjust spacing dynamically
            ],
          ),
        ),
      ),

      // Bottom App Bar with Terms and Privacy Policy
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: const TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w400,
                color: Color(0xff1F2D43),
              ),
              children: <TextSpan>[
                const TextSpan(
                  text:
                      "By creating or logging into an account you’re agreeing with our ",
                ),
                TextSpan(
                  text: "Terms and conditions",
                  style: const TextStyle(
                    decoration: TextDecoration.underline,
                    color: Color(0xff1F2D43),
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      // Action for "Terms and conditions" tap
                      print("Terms and Conditions tapped");
                    },
                ),
                const TextSpan(text: " and "),
                TextSpan(
                  text: "Privacy policy",
                  style: const TextStyle(
                    decoration: TextDecoration.underline,
                    color: Color(0xff1F2D43),
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      // Action for "Privacy policy" tap
                      print("Privacy Policy tapped");
                    },
                ),
                const TextSpan(
                  text: ".",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
