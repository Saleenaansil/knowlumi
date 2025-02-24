import 'package:flutter/material.dart';
import 'package:knowlumi/classes%20Page/classesPageSubPages/videosection.dart';
import 'package:knowlumi/classes%20Page/downloaded.dart';
import 'package:knowlumi/customwidget/customText.dart';

import 'classesPageSubPages/classesPage.dart';
import 'classesPageSubPages/topsection.dart';

class Classpage1 extends StatefulWidget {
  const Classpage1({super.key});

  @override
  _Classpage1State createState() => _Classpage1State();
}

class _Classpage1State extends State<Classpage1> {
  int selectedIndex = 0; // Tracks selected tab index
  TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F6F9),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Top Stack with Image & Gradient

            selectedIndex == 0 ? TopSection() : Videosection(),

            // Tab Row
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 4,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      // Tab Row
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            tabItem(0, "Classes"),
                            tabItem(1, "Downloads"),
                            tabItem(2, "Discussions"),
                          ],
                        ),
                      ),

                      // Content Section
                      Container(
                        child: IndexedStack(
                          index: selectedIndex,
                          children: [
                            ClassesPage(), // Page 1
                            DownloadsPage(), // Page 2
                            DiscussionsPage(), // Page 3
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: selectedIndex == 2 // Only for Discussions Page
          ? BottomAppBar(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    // Profile Picture
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('asset/profile1.png'),
                    ),
                    SizedBox(width: 10),

                    // Text Field for Chat Message
                    Expanded(
                      child: TextField(
                        controller: _messageController,
                        decoration: InputDecoration(
                          hintText: 'Type a message...',
                          hintStyle: TextStyle(
                            fontSize: 14, // Adjust font size if needed
                            color:
                                Colors.grey, // Adjust hint text color if needed
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 14,
                              horizontal:
                                  16), // Vertical padding for centering hint text
                        ),
                      ),
                    ),

                    SizedBox(width: 10),

                    // Send Icon
                    GestureDetector(
                      onTap: () {
                        String message = _messageController.text;
                        if (message.isNotEmpty) {
                          // Handle sending message here
                          print("Sent message: $message");
                          _messageController
                              .clear(); // Clear the text field after sending
                        }
                      },
                      child: Image.asset(
                        'asset/send 1.png', // Replace this with your asset path
                        width: 24, // Adjust the size of the image
                        height: 24,
                      ),
                    ),
                  ],
                ),
              ),
            )
          : null,
    );
  }

  // Tab Item Widget
  // Tab Item Widget
  Widget tabItem(int index, String title) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Column(
        children: [
          Container(
            height: 37,
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: selectedIndex == index
                      ? Color(0xff1F2D43)
                      : Color(0xFF1F2D43).withOpacity(0.7),
                ),
              ),
            ),
          ),
          // Add the custom container below the tab text
          if (selectedIndex == index)
            Container(
              width: 105, // Width of the container
              height: 6, // Height of the container
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16), // Radius of 16px
                gradient: LinearGradient(
                  colors: [
                    Color(0xff316A69),
                    Color(0xff000000)
                  ], // Gradient colors
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class DiscussionsPage extends StatelessWidget {
  final List<Map> discussionItem = [
    {
      "profile": "asset/profile1.png",
      "name": "Rajesh",
      "time": "5 Mins ago",
      "message": "I just like the way he takes the class",
      "likeIcon": "asset/like.png",
      "likecount": "18",
      "unlikeIcon": "asset/unlike.png",
      "unlikeCount": "8",
      "replayIcon": "asset/reply.png",
      "replay": "Reply"
    },
    {
      "profile": "asset/profile2.png",
      "name": "Anna Benn",
      "time": "5 Mins ago",
      "message": "His method of conducting the class is something I enjoy.",
      "likeIcon": "asset/like.png",
      "likecount": "18",
      "unlikeIcon": "asset/unlike.png",
      "unlikeCount": "8",
      "replayIcon": "asset/reply.png",
      "replay": "Reply",
    },
    {
      "profile": "asset/profile3.png",
      "name": "Danny",
      "time": "5 Mins ago",
      "message": "The way he teaches makes the class enjoyable for me.",
      "likeIcon": "asset/like.png",
      "likecount": "18",
      "unlikeIcon": "asset/unlike.png",
      "unlikeCount": "8",
      "replayIcon": "asset/reply.png",
      "replay": "Reply"
    },
    {
      "profile": "asset/profile3.png",
      "name": "Danny",
      "time": "5 Mins ago",
      "message": "The way he teaches makes the class enjoyable for me.",
      "likeIcon": "asset/like.png",
      "likecount": "18",
      "unlikeIcon": "asset/unlike.png",
      "unlikeCount": "8",
      "replayIcon": "asset/reply.png",
      "replay": "Reply"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12),
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: discussionItem.length,
        itemBuilder: (context, index) {
          final item = discussionItem[index];

          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  // color: Colors.white,
                  //borderRadius: BorderRadius.circular(12),
                  //border: Border.all(color: Colors.grey.shade300, width: 0.5),

                  ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Profile Image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      item["profile"],
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 10),

                  // Discussion Text
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Name and Time
                        Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              item["name"],
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 8.5,
                            ),
                            Text(
                              item["time"],
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 4),

                        // Message
                        Text(
                          item["message"],
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(height: 8),

                        // Like, Unlike & Reply
                        Row(
                          children: [
                            // Like Button
                            Row(
                              children: [
                                Image.asset(item["likeIcon"], width: 16),
                                SizedBox(width: 4),
                                Text(item["likecount"]),
                              ],
                            ),
                            SizedBox(width: 16),

                            // Unlike Button
                            Row(
                              children: [
                                Image.asset(item["unlikeIcon"], width: 16),
                                SizedBox(width: 4),
                                Text(item["unlikeCount"]),
                              ],
                            ),
                            SizedBox(width: 16),

                            // Reply Button
                            Row(
                              children: [
                                Image.asset(item["replayIcon"], width: 16),
                                SizedBox(width: 4),
                                Text(
                                  item["replay"],
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
