import 'package:flutter/material.dart';
import '../classes Page/classesPageSubPages/startclasspage.dart';
import '../customwidget/customText.dart';

class Firstpage extends StatelessWidget {
  const Firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map> classesList = [
      {
        "playButton": "asset/playButton.png",
        "name": "Learn at least one language",
        "time": "58 mins",
        "status": "",
        "downLoadButton": "asset/download 2.png"
      },
      {
        "playButton": "asset/playButton.png",
        "name": "Learn about Complexities",
        "time": "58 mins",
        "status": "Watched",
        "downLoadButton": "asset/download 2.png"
      },
      {
        "playButton": "asset/Notebutton.png",
        "name": "Learn Data Structures and Algorithms",
        "time": "58 mins",
        "status": "Newly added",
        "downLoadButton": "asset/download 2.png"
      }
    ];

    final List<Map> objectives = [
      {
        "playButton": "asset/playButton.png",
        "name": "Linked List",
        "time": "58 mins",
        "status": "Watched",
        "downLoadButton": "asset/download 2.png"
      },
      {
        "playButton": "asset/playButton.png",
        "name": "Sorting Algorithm",
        "time": "58 mins",
        "status": "Watched",
        "downLoadButton": "asset/download 2.png"
      },
    ];

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 260,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 260,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xff000000), Color(0xff316A69)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.65, 1.0],
                    ),
                  ),
                ),
                Positioned(
                  left: 129,
                  top: 32,
                  bottom: 0,
                  child: Image.asset(
                    "asset/shotman.png",
                    fit: BoxFit.contain,
                  ),
                ),
                const Positioned(
                  top: 101,
                  left: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: "DSA",
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                      CustomText(
                        text: "3 Chapters",
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 20,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back, color: Colors.black),
                        onPressed: () {
                          if (Navigator.canPop(context)) {
                            Navigator.pop(context);
                          }
                        },
                      ),
                    ),
                  ),
                ),
                Positioned(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25, top: 194),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StartClassPage()),
                        );
                      },
                      child: Container(
                        height: 44,
                        width: 115,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xff9A1864), Color(0xff650061)],
                            begin: Alignment.topLeft,
                            end: Alignment.topRight,
                          ),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Center(
                          child: CustomText(
                            text: "Start Class",
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 18),
        ],
      ),
    );
  }
}
