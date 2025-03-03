import 'package:flutter/material.dart';

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
          physics: BouncingScrollPhysics(),
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
                        item["profile"],
                        width: 40,
                        height: 40,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                item["name"],
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(width: 8.5),
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
                          Text(
                            item["message"],
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.black87,
                            ),
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Image.asset(item["likeIcon"], width: 16),
                                  SizedBox(width: 4),
                                  Text(item["likecount"]),
                                ],
                              ),
                              SizedBox(width: 16),
                              Row(
                                children: [
                                  Image.asset(item["unlikeIcon"], width: 16),
                                  SizedBox(width: 4),
                                  Text(item["unlikeCount"]),
                                ],
                              ),
                              SizedBox(width: 16),
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
        ));
  }
}
