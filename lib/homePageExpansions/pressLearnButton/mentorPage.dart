import 'package:flutter/material.dart';

class Mentorpage extends StatelessWidget {
  Mentorpage({super.key});

  final List<Map<String, String>> mentorChat = [
    {
      "profile": "asset/profile1.png",
      "name": "Rajesh",
      "time": "5 Mins ago",
      "message": "I just like the way he takes the class",
    },
    {
      "profile": "asset/profile2.png",
      "name": "Anna Benn",
      "time": "5 Mins ago",
      "message": "His method of conducting the class is something I enjoy.",
    },
    {
      "profile": "asset/profile3.png",
      "name": "Danny",
      "time": "5 Mins ago",
      "message": "The way he teaches makes the class enjoyable for me.",
    },
    {
      "profile": "asset/profile2.png",
      "name": "Anna Benn",
      "time": "5 Mins ago",
      "message": "I just like the way he take the class",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 96), // Moves the container down by 96 pixels

          Center(
            child: Container(
              width: 344,
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    blurRadius: 10,
                    spreadRadius: 2,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                children: [
                  // Mentor Text
                  const Text(
                    "Mentor",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),

                  const SizedBox(
                      height: 14), // Space between text and gradient bar

                  // Gradient Bar
                  Container(
                    width: 111,
                    height: 6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      gradient: const LinearGradient(
                        colors: [Color(0xFF316A69), Color(0xFF000000)],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                    ),
                  ),

                  const SizedBox(height: 20), // Space before chat list

                  // Chat List
                  ListView.separated(
                    shrinkWrap: true,
                    physics:
                        const NeverScrollableScrollPhysics(), // Disable scrolling inside container
                    itemCount: mentorChat.length,
                    separatorBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10), // Adds spacing
                      child: const Divider(
                        color: Colors.grey,
                        thickness: 0.5,
                      ),
                    ),
                    itemBuilder: (context, index) {
                      final chat = mentorChat[index];

                      return Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Profile Picture
                          CircleAvatar(
                            backgroundImage: AssetImage(chat["profile"]!),
                            radius: 20,
                          ),
                          const SizedBox(width: 10),

                          // Chat Details
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Name & Time
                                Row(
                                  children: [
                                    Text(
                                      chat["name"]!,
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      chat["time"]!,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),

                                const SizedBox(height: 4),

                                // Message
                                Text(
                                  chat["message"]!,
                                  style: const TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

      // Bottom Chat Bar
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        elevation: 10,
        shape: const CircularNotchedRectangle(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Row(
            children: [
              // Profile Picture
              const CircleAvatar(
                backgroundImage: AssetImage("asset/profile1.png"),
                radius: 20,
              ),
              const SizedBox(width: 10),

              // Chat Input Field
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Write a comment",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 10),
                  ),
                ),
              ),

              const SizedBox(width: 10),

              // Send Button
              InkWell(
                onTap: () {
                  // TODO: Implement send message function
                },
                child: Image.asset(
                  "asset/sendmessage.png", // Replace with your send icon image path
                  width: 30, // Adjust size as needed
                  height: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
