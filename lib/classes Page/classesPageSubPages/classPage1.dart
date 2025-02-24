// import 'package:flutter/material.dart';

// import '../../customwidget/customText.dart';

// class ClassesPage1 extends StatelessWidget {
//   @override
//   final List<Map> classesList = [
//     {
//       "playButton": "asset/playButton.png",
//       "name": "Learn at least one language",
//       "time": "58 mins",
//       "status": "",
//       "downLoadButton": "asset/download 2.png"
//     },
//     {
//       "playButton": "asset/playButton.png",
//       "name": "Learn about Complexities",
//       "time": "58 mins",
//       "status": "Watched",
//       "downLoadButton": "asset/download 2.png"
//     },
//     {
//       "playButton": "asset/Notebutton.png",
//       "name": "Learn Data Structures and Algorithms",
//       "time": "58 mins",
//       "status": "Newly added",
//       "downLoadButton": "asset/download 2.png"
//     }
//   ];
//   final List<Map> objectives = [
//     {
//       "playButton": "asset/playButton.png",
//       "name": "Linked List",
//       "time": "58 mins",
//       "status": "Watched",
//       "downLoadButton": "asset/download 2.png"
//     },
//     {
//       "playButton": "asset/playButton.png",
//       "name": "Sorting Algorithm",
//       "time": "58 mins",
//       "status": "Watched",
//       "downLoadButton": "asset/download 2.png"
//     },
//   ];

//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(left: 14, right: 14, top: 20),
//             child: Row(
//               children: [
//                 Container(
//                   height: 19,
//                   width: 40,
//                   decoration: BoxDecoration(
//                       color: Color(0xff1F2D4366),
//                       borderRadius: BorderRadius.circular(4)),
//                   child: Center(
//                     child: CustomText(
//                       text: "Part 1",
//                       fontSize: 12,
//                       fontWeight: FontWeight.w600,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 6,
//                 ),
//                 CustomText(
//                     text: "Concept of co-operation",
//                     fontSize: 12,
//                     fontWeight: FontWeight.w500,
//                     color: Colors.black),
//               ],
//             ),
//           ),
//           ListView.builder(
//             shrinkWrap: true,
//             physics: NeverScrollableScrollPhysics(),
//             itemCount: classesList.length,
//             itemBuilder: (context, index) {
//               final item = classesList[index];
//               final statusColor =
//                   index == 1 ? Color(0xff1BB634) : Color(0xffB61B76);

//               return Padding(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
//                 child: Container(
//                   height: 65,
//                   child: Row(
//                     crossAxisAlignment:
//                         CrossAxisAlignment.center, // Align items in Row
//                     children: [
//                       Image.asset(item["playButton"], height: 30, width: 30),
//                       SizedBox(width: 8),
//                       Expanded(
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment
//                               .center, // Align column items vertically
//                           crossAxisAlignment:
//                               CrossAxisAlignment.start, // Align text to start
//                           children: [
//                             CustomText(
//                               text: item["name"],
//                               fontSize: 12,
//                               fontWeight: FontWeight.w500,
//                               color: Colors.black,
//                             ),
//                             SizedBox(
//                                 height: 4), // Adds some spacing between rows
//                             Row(
//                               children: [
//                                 CustomText(
//                                   text: item["time"],
//                                   fontSize: 12,
//                                   fontWeight: FontWeight.w400,
//                                   color: Colors.grey,
//                                 ),
//                                 SizedBox(width: 6),
//                                 if (item["status"].isNotEmpty)
//                                   Container(
//                                     padding: EdgeInsets.symmetric(
//                                         horizontal: 6, vertical: 2),
//                                     decoration: BoxDecoration(
//                                       color: statusColor.withOpacity(0.2),
//                                       borderRadius: BorderRadius.circular(4),
//                                     ),
//                                     child: CustomText(
//                                       text: item["status"],
//                                       fontSize: 10,
//                                       fontWeight: FontWeight.w500,
//                                       color: statusColor,
//                                     ),
//                                   ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                       Image.asset(item["downLoadButton"],
//                           height: 24, width: 24),
//                     ],
//                   ),
//                 ),
//               );
//             },
//           ),
//           SizedBox(height: 20),
//           Center(
//               child: Container(
//             width: 316,
//             child: Divider(
//               thickness: 1, // 1px border
//               color: Colors.grey.shade300,
//             ),
//           )),
//           SizedBox(height: 20),
//           Padding(
//             padding: const EdgeInsets.only(left: 14, right: 14),
//             child: Row(
//               children: [
//                 Container(
//                   height: 19,
//                   width: 40,
//                   decoration: BoxDecoration(
//                       color: Color(0xff1F2D4366),
//                       borderRadius: BorderRadius.circular(4)),
//                   child: Center(
//                     child: CustomText(
//                       text: "Part 2",
//                       fontSize: 12,
//                       fontWeight: FontWeight.w600,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 6,
//                 ),
//                 CustomText(
//                     text: "Features, Objectives & benefits of DSA ",
//                     fontSize: 12,
//                     fontWeight: FontWeight.w500,
//                     color: Colors.black),
//               ],
//             ),
//           ),
//           ListView.builder(
//               shrinkWrap: true,
//               physics: NeverScrollableScrollPhysics(),
//               itemCount: objectives.length,
//               itemBuilder: (context, index) {
//                 final item = objectives[index];

//                 return Padding(
//                   padding: const EdgeInsets.only(left: 14, right: 14),
//                   child: Container(
//                     height: 65,
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Row(
//                         children: [
//                           // Play Button
//                           Image.asset(
//                             item["playButton"],
//                             height: 24,
//                             width: 24,
//                           ),
//                           SizedBox(
//                               width:
//                                   12), // Spacing between play button and text
//                           // Text and Status Section
//                           Expanded(
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               mainAxisSize: MainAxisSize.min,
//                               mainAxisAlignment:
//                                   MainAxisAlignment.center, // Center vertically
//                               children: [
//                                 // Title
//                                 Row(
//                                   children: [
//                                     CustomText(
//                                       text: item["name"],
//                                       fontSize: 12,
//                                       fontWeight: FontWeight.w500,
//                                       color: Colors.black,
//                                     ),
//                                   ],
//                                 ),
//                                 SizedBox(
//                                     height:
//                                         4), // Spacing between title and time/status
//                                 // Time and Status
//                                 Row(
//                                   children: [
//                                     CustomText(
//                                       text: item["time"],
//                                       fontSize: 12,
//                                       fontWeight: FontWeight.w400,
//                                       color: Colors.grey,
//                                     ),
//                                     SizedBox(
//                                         width:
//                                             6), // Spacing between time and status
//                                     if (item["status"].isNotEmpty)
//                                       Container(
//                                         padding: EdgeInsets.symmetric(
//                                             horizontal: 6, vertical: 2),
//                                         decoration: BoxDecoration(
//                                           color: Color(0xff1BB634).withOpacity(
//                                               0.2), // Background color with opacity
//                                           borderRadius:
//                                               BorderRadius.circular(4),
//                                         ),
//                                         child: CustomText(
//                                           text: item["status"],
//                                           fontSize: 10,
//                                           fontWeight: FontWeight.w500,
//                                           color: Color(
//                                               0xff1BB634), // Dynamic color based on index
//                                         ),
//                                       ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),
//                           // Download Button
//                           Image.asset(
//                             item["downLoadButton"],
//                             height: 24,
//                             width: 24,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 );
//               }),
//         ],
//       ),
//     );
//   }
// }
