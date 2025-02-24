import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:knowlumi/LearnPage/checking.dart';

class checking extends StatefulWidget {
  @override
  State<checking> createState() => _HomepagedummyState();
}

class _HomepagedummyState extends State<checking> {
  final List<String> courseOptions = ["FLUTTER", "MERN"];
  int index = 0;
  String? selectedValue;
  void  initState() {
    super.initState();
    // Retrieve the selectedValue from the arguments
    selectedValue =
        Get.arguments ?? "MERN"; // Default value if no argument is passed
  }

  OverlayEntry? overlayEntry;

  void showPopupMenu(BuildContext context, Offset offset) {
    //overlayEntry?.remove();
    overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        left: 22,
        right: 15,
        top: 170,
        child: Material(
          color: Colors.transparent,
          child: Container(
            width: 348,
            height: 114,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 5,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(courseOptions.length, (index) {
                return Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedValue = courseOptions[index];
                        });

                        overlayEntry?.remove();
                      },
                      child: SingleChildScrollView(
                        child: Container(
                          padding: const EdgeInsets.only(
                              left: 18, right: 14, top: 12),
                          width: double.infinity,
                          child: Center(
                            child: Text(
                              courseOptions[index],
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    if (index != courseOptions.length - 1)
                      const Divider(
                        color: Colors.grey,
                        thickness: 0.5,
                        height: 1,
                      ),
                  ],
                );
              }),
            ),
          ),
        ),
      ),
    );

    Overlay.of(context).insert(overlayEntry!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(60.0),
        child: Column(
          children: [
            Container(
              height: 52,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFFe4e4ec),
                border: Border.all(
                  color: const Color(0xffDEE5EC),
                  width: 0.8,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              padding: const EdgeInsets.only(left: 15, right: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: ImageIcon(
                      AssetImage("asset/Icon.png"),
                      color: Color(0xff316A69),
                    ),
                  ),
                  const Text(
                    "My Course",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  const Spacer(),
                  if (selectedValue != null)
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Text(
                        selectedValue!,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          foreground: Paint()
                            ..shader = const LinearGradient(
                              colors: [
                                Colors.blue,
                                Colors.purple
                              ], // Adjust gradient colors
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ).createShader(const Rect.fromLTWH(
                                0.0, 0.0, 200.0, 70.0)), // Adjust size
                        ),
                      ),
                    ),

                  /// Custom dropdown button
                  GestureDetector(
                    onTapDown: (details) {
                      showPopupMenu(context, details.globalPosition);
                    },
                    child: Image.asset("asset/down-arrow 1.png"),
                  ),
                ],
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Get.off(() => checking());
                },
                child: Text("loaded"))
          ],
        ),
      ),
    );
  }
}
