import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:knowlumi/customwidget/customColor.dart';
import 'package:knowlumi/customwidget/customText.dart';
import 'package:knowlumi/loginPage/loginPage3.dart';

class Otppage extends StatelessWidget {
  const Otppage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
            top: 163, left: 21, right: 21), // Padding for the screen
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Align text to the left
          children: [
            // OTP Instruction Text
            const CustomText(
              text: "Please enter OTP sent to 9500678900",
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: Color(0xff1F2D43),
            ),
            SizedBox(height: 44), // Consistent spacing

            // OTP Input Fields
            Container(
              margin: EdgeInsets.zero, // Ensure no extra space
              padding: EdgeInsets.zero,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: List.generate(
                  4,
                  (index) => const Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: TextField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        maxLength: 1,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFe4e4ec),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                            borderSide: BorderSide(color: Color(0xFFe4e4ec)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                            borderSide: BorderSide(color: Color(0xFFe4e4ec)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFe4e4ec)),
                          ),
                          hintText: "1",
                          hintStyle:
                              TextStyle(color: Color(0xff1F2D43), fontSize: 16),
                          counterText: "",
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 17, // Top and bottom padding of 17px
                            horizontal: 14, // Left and right padding of 14px
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 14), // Space between OTP fields and the button

            // Continue Button
            Container(
              width: double.infinity,
              height: 54,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Customcolor.primaryLight, Customcolor.primaryDark],
                  begin: Alignment.topCenter, // Start at the top center
                  end: Alignment.bottomRight, // End at the bottom right
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Colors.transparent, // Transparent to show gradient
                  shadowColor: Colors.transparent, // Remove shadow
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  Get.off(LoginPage3());
                },
                child: const CustomText(
                  text: "Continue",
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
                height: 14), // Space between the continue button and the row

            // Resend OTP Section
            Row(
              mainAxisAlignment: MainAxisAlignment.center, // Distribute evenly
              children: [
                const Flexible(
                  // Wrap text to prevent overflow on smaller screens
                  child: CustomText(
                    text: "Didn't receive OTP?",
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff1F2D43),
                  ),
                ),
                const SizedBox(width: 2), // Space between text and button
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        const Color(0xffE9F1FF), // Background color
                    elevation: 3, // Elevation (shadow)
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18), // Radius of 18px
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 6, // Top and bottom padding (6px)
                      horizontal: 10, // Left and right padding (10px)
                    ),
                    minimumSize: const Size(
                        64, 27), // Width and height (Hug constraints)
                  ),
                  child: const CustomText(
                    text: "Resend",
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff1F2D43), // Text color
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
