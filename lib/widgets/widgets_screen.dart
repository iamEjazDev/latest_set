// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// class WidgetsScreen extends StatefulWidget {
//   const WidgetsScreen({super.key});

//   @override
//   State<WidgetsScreen> createState() => _WidgetsScreenState();
// }

// class _WidgetsScreenState extends State<WidgetsScreen> {
//    bool isExpanded = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:Column(
//         children: [
//           Padding(
//             padding: EdgeInsets.only(left: 12, right: 12),
//             child: AnimatedContainer(
//               duration: Duration(milliseconds: 300),
//               width: 345,
//               height: isExpanded ? 219 : 42,
//               decoration: BoxDecoration(
//                 color: Color.fromRGBO(30, 34, 53, 1),
//                 borderRadius: BorderRadius.circular(4),
//               ),
//               child: SingleChildScrollView(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Row(
//                           children: [
//                             SizedBox(width: 12),
//                             Text(
//                               'Project 1',
//                               style: GoogleFonts.poppins(
//                                 fontSize: 12,
//                                 fontWeight: FontWeight.w400,
//                                 color: Colors.white,
//                               ),
//                             ),
//                             SizedBox(width: 20),
//                             Text(
//                               'Review counts:0',
//                               style: GoogleFonts.poppins(
//                                 fontSize: 8,
//                                 fontWeight: FontWeight.w400,
//                                 color: Colors.white,
//                                 fontStyle: FontStyle.italic,
//                               ),
//                             ),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Container(
//                               height: 20,
//                               width: 36,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(2),
//                                 color: Color.fromRGBO(83, 202, 253, 0.8),
//                               ),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                                 children: [
//                                   Image.asset(
//                                     'assets/icons/3dot.png',
//                                     fit: BoxFit.cover,
//                                     height: 12,
//                                     width: 3.43,
//                                   ),
//                                   Image.asset(
//                                     'assets/icons/dropdown.png',
//                                     fit: BoxFit.cover,
//                                     height: 4,
//                                     width: 8,
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             IconButton(
//                               icon: Icon(
//                                 isExpanded
//                                     ? Icons.keyboard_arrow_up
//                                     : Icons.keyboard_arrow_down,
//                                 color: Colors.white,
//                               ),
//                               onPressed: () {
//                                 setState(() {
//                                   isExpanded = false;
//                                 });
//                               },
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                     if (isExpanded) ...[
//                       Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 21, vertical: 5),
//                         child: Text(
//                           'Project Description:',
//                           style: GoogleFonts.poppins(
//                             fontSize: 10,
//                             fontWeight: FontWeight.w500,
//                             color: Color.fromRGBO(100, 107, 117, 1),
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 39, vertical: 5),
//                         child: Text(
//                           'Supporting community-based food projects:\nadvisory & training services on participatory\nvideo proposals for planning, sharing and\nfundraising purposes.',
//                           style: GoogleFonts.poppins(
//                             fontSize: 10,
//                             fontWeight: FontWeight.w400,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 21, vertical: 25),
//                         child: RichText(
//                           textAlign: TextAlign.start,
//                           text: TextSpan(
//                             children: [
//                               TextSpan(
//                                 text: 'Project Date:',
//                                 style: GoogleFonts.poppins(
//                                   fontSize: 10,
//                                   fontWeight: FontWeight.w400,
//                                   color: Color.fromRGBO(100, 107, 117, 1),
//                                 ),
//                               ),
//                               TextSpan(
//                                 text: '      2024-03-14',
//                                 style: GoogleFonts.poppins(
//                                   fontSize: 10,
//                                   fontWeight: FontWeight.w400,
//                                   color: Colors.white,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ) ,
//     );
//   }
// }