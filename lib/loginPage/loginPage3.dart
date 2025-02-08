import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:knowlumi/customwidget/customColor.dart';
import 'package:knowlumi/customwidget/customText.dart';
import 'package:knowlumi/register/registerPage.dart'; // Import custom widgets

class LoginPage3 extends StatefulWidget {
  const LoginPage3({super.key});

  @override
  _LoginPage3State createState() => _LoginPage3State();
}

class _LoginPage3State extends State<LoginPage3> {
  bool _obscureText = true; // For password visibility toggle

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 181),
                // Welcome Text
                const CustomText(
                  text: "Welcome 👋🏼",
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff1F2D43),
                ),
                const SizedBox(height: 5),
                const CustomText(
                    text: "Enter your Password",
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff1F2D43)),

                // Lock Symbol and Password TextField
                Padding(
                  padding: EdgeInsets.only(top: screenHeight * 0.03),
                  child: Row(
                    children: [
                      // Lock Symbol TextField
                      SizedBox(
                        width: screenWidth * 0.15,
                        height: screenHeight * 0.07,
                        child: const TextField(
                          style:
                              TextStyle(fontSize: 12, color: Color(0xff1F2D43)),
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock, // Lock symbol icon
                              color: Color(0xff1F2D43),
                              size: 18,
                            ),
                            hintText: '',
                            fillColor: Color(0xFFe4e4ec),
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                bottomLeft: Radius.circular(16),
                              ),
                              borderSide: BorderSide(color: Color(0xFFe4e4ec)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                bottomLeft: Radius.circular(16),
                              ),
                              borderSide: BorderSide(color: Color(0xFFe4e4ec)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                bottomLeft: Radius.circular(16),
                              ),
                              borderSide: BorderSide(color: Color(0xFFe4e4ec)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 2),

                      // Password TextField with Eye Icon
                      Expanded(
                        child: SizedBox(
                          height: screenHeight * 0.07,
                          child: TextField(
                            obscureText:
                                _obscureText, // Control password visibility
                            style: TextStyle(fontSize: 12, color: Colors.black),
                            decoration: InputDecoration(
                              hintText: 'Enter your Password',
                              fillColor: Color(0xFFe4e4ec),
                              filled: true,
                              border: const OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(16),
                                  bottomRight: Radius.circular(16),
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(16),
                                  bottomRight: Radius.circular(16),
                                ),
                                borderSide:
                                    BorderSide(color: Color(0xFFe4e4ec)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFFe4e4ec)),
                              ),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _obscureText
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: Color(0xff1F2D43),
                                  size: 20,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _obscureText =
                                        !_obscureText; // Toggle password visibility
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 14),
                  child: Row(
                    children: [
                      // Country Code TextField
                      SizedBox(
                        width: screenWidth * 0.15, // 15% of screen width
                        height: screenHeight * 0.07, // 7% of screen height
                        child: TextField(
                          style:
                              TextStyle(fontSize: 12, color: Color(0xff1F2D43)),
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock, // Lock symbol icon
                              color: Color(0xff1F2D43),
                              size: 18,
                            ),
                            hintText: '',
                            fillColor: Color(0xFFe4e4ec),
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                bottomLeft: Radius.circular(16),
                              ),
                              borderSide: BorderSide(
                                color: Color(0xFFe4e4ec),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                bottomLeft: Radius.circular(16),
                              ),
                              borderSide: BorderSide(color: Color(0xFFe4e4ec)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                bottomLeft: Radius.circular(16),
                              ),
                              borderSide: BorderSide(color: Color(0xFFe4e4ec)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 2), // Responsive spacing
                      // Mobile Number TextField
                      Expanded(
                        child: SizedBox(
                          height: screenHeight * 0.07, // 7% of screen height
                          child: TextField(
                            obscureText: _obscureText,
                            style: TextStyle(fontSize: 12, color: Colors.black),
                            decoration: InputDecoration(
                              hintText: 'Re-enter your Password',
                              fillColor: Color(0xFFe4e4ec),
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(16),
                                  bottomRight: Radius.circular(16),
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(16),
                                  bottomRight: Radius.circular(16),
                                ),
                                borderSide:
                                    BorderSide(color: Color(0xFFe4e4ec)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFFe4e4ec)),
                              ),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _obscureText
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: Color(0xff1F2D43),
                                  size: 20,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _obscureText =
                                        !_obscureText; // Toggle password visibility
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                // Gradient Continue Button
                Container(
                  width: double.infinity,
                  height: 54,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Customcolor.primaryLight,
                        Customcolor.primaryDark
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      Get.off(Registerpage());
                    },
                    child: const CustomText(
                      text: "Continue",
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 14),
                const SizedBox(height: 40),
              ],
            ),
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
