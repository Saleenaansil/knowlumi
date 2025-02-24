import 'package:flutter/material.dart';
import '../../customwidget/customText.dart';

class ClassesPage extends StatefulWidget {
  @override
  _ClassesPageState createState() => _ClassesPageState();
}

class _ClassesPageState extends State<ClassesPage> {
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

  // Track download status for both lists
  List<bool> classesDownloaded = [];
  List<bool> objectivesDownloaded = [];

  @override
  void initState() {
    super.initState();
    classesDownloaded = List.generate(classesList.length, (_) => false);
    objectivesDownloaded = List.generate(objectives.length, (_) => false);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          buildSection("Part 1", "Concept of co-operation", classesList,
              classesDownloaded),
          _divider(),
          buildSection("Part 2", "Features, Objectives & benefits of DSA",
              objectives, objectivesDownloaded),
        ],
      ),
    );
  }

  Widget buildSection(
      String part, String title, List<Map> list, List<bool> downloadStatus) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 14, right: 14, top: 20),
          child: Row(
            children: [
              Container(
                height: 19,
                width: 40,
                decoration: BoxDecoration(
                    color: Color(0xff1F2D4366),
                    borderRadius: BorderRadius.circular(4)),
                child: Center(
                  child: CustomText(
                    text: part,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(width: 6),
              CustomText(
                  text: title,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ],
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: list.length,
          itemBuilder: (context, index) {
            final item = list[index];
            final statusColor = item["status"] == "Watched"
                ? Color(0xff1BB634)
                : Color(0xffB61B76);

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
              child: Container(
                height: 65,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(item["playButton"], height: 30, width: 30),
                    SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: item["name"],
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                          SizedBox(height: 4),
                          Row(
                            children: [
                              CustomText(
                                text: item["time"],
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 6),
                              if (item["status"].isNotEmpty)
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 6, vertical: 2),
                                  decoration: BoxDecoration(
                                    color: statusColor.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: CustomText(
                                    text: item["status"],
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    color: statusColor,
                                  ),
                                ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          downloadStatus[index] = !downloadStatus[index];
                        });
                      },
                      child: Image.asset(
                        downloadStatus[index]
                            ? "asset/tick.png" // ✅ Tick icon after tap
                            : item["downLoadButton"], // ⬇️ Download icon
                        height: 24,
                        width: 24,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _divider() {
    return Center(
      child: Container(
        width: 316,
        child: Divider(
          thickness: 1,
          color: Colors.grey.shade300,
        ),
      ),
    );
  }
}
