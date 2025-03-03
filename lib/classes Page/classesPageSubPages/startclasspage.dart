import 'package:flutter/material.dart';
import 'package:knowlumi/classes%20Page/classesPageSubPages/classesPage.dart';
import 'package:knowlumi/classes%20Page/classesPageSubPages/videosection.dart';
import 'package:knowlumi/classes%20Page/downloaded.dart';
import '../../customwidget/customText.dart';

class StartClassPage extends StatefulWidget {
  const StartClassPage({super.key});

  @override
  _StartClassPageState createState() => _StartClassPageState();
}

class _StartClassPageState extends State<StartClassPage> {
  int selectedIndex = 0;

  final List<Map<String, String>> discussionItem = [
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
    return Scaffold(
      backgroundColor: Color(0xffF5F6F9),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(child: Videosection()),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
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
                    IndexedStack(
                      index: selectedIndex,
                      children: [
                        ClassesPage(),
                        DownloadsPage(),
                        buildDiscussionsPage(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget tabItem(int index, String title) {
    return GestureDetector(
      onTap: () => setState(() => selectedIndex = index),
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
          if (selectedIndex == index)
            Container(
              width: 105,
              height: 6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                gradient: LinearGradient(
                  colors: [Color(0xff316A69), Color(0xff000000)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget buildDiscussionsPage() {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: 400, // Adjust as needed
        ),
        child: ListView.builder(
          shrinkWrap: true,
          physics: AlwaysScrollableScrollPhysics(),
          itemCount: discussionItem.length,
          itemBuilder: (context, index) {
            final item = discussionItem[index];

            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey.shade300, width: 0.5),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        item["profile"]!,
                        width: 40,
                        height: 40,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) =>
                            Icon(Icons.person, size: 40),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  item["name"]!,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Text(
                                item["time"]!,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 4),
                          Text(
                            item["message"]!,
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.black87,
                            ),
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              buildReactionRow(
                                  item["likeIcon"]!, item["likecount"]!),
                              SizedBox(width: 16),
                              buildReactionRow(
                                  item["unlikeIcon"]!, item["unlikeCount"]!),
                              SizedBox(width: 16),
                              buildReactionRow(
                                  item["replayIcon"]!, item["replay"]!),
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
      ),
    );
  }
}

Widget buildReactionRow(String iconPath, String count) {
  return Row(
    children: [
      Image.asset(iconPath,
          width: 16,
          errorBuilder: (context, error, stackTrace) =>
              Icon(Icons.thumb_up, size: 16)),
      SizedBox(width: 4),
      Text(count),
    ],
  );
}
