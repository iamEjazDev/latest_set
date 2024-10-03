import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latest_app/create_project_screen/create_project_screen.dart';
import 'package:latest_app/project_grid_view/project_grid_view_screen.dart';
import 'package:latest_app/signup_screen/signup_screen.dart';

import '../grid_view_class/grid_view_class.dart';

class ProlistviewScreen extends StatefulWidget {
   const ProlistviewScreen({super.key, required List<Map<String, dynamic>> projects});

  @override
  State<ProlistviewScreen> createState() => _ProlistviewScreenState();
}

class _ProlistviewScreenState extends State<ProlistviewScreen> {
  bool isExpanded=false;
  bool isIconClicked = false;
  bool isListClicked = false;

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:Container(
        height: double.infinity,
        width: double.infinity,
          decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight   ,
            colors: const [
            Color.fromRGBO(0, 0, 0, 1),
            Color.fromRGBO(15, 40, 53, 1),
             Color.fromRGBO(0, 0, 0, 1),
          ]),
        ),
        child: Stack(
        
          children: [
            Positioned(
              left: 0,
              bottom: 0,
              child:Image.asset('assets/graph 2.png',height: 116.31,width: 165.22,)
               ),
        
               SingleChildScrollView(
                 child: Column(
                   children: [
                     SizedBox(height: 31,),
                     Reuseableheaderimage(),
                     Divider(
                       thickness: 1,
                       color: Color.fromRGBO(255, 255, 255, 0.6),
                     ),
                     SizedBox(height: 15,),
                     CommonTextformfield(
                       height: 38,
                       Width: 342, 
                     Text: 'Search', 
                     hintStyle: GoogleFonts.poppins(
                       fontSize: 14,
                       fontWeight: FontWeight.w400,
                       color: Colors.white
                     ),
                     textAlign: TextAlign.start,
                     suffixIcon:true,
                     ),
                     SizedBox(height: 15),
                     Padding(
                       padding: const EdgeInsets.all(14.0),
                       child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Row(
                             children: [
                                GestureDetector(
                                    onTap: () {
                                    setState(() {
                                    isIconClicked = true;
                                      isListClicked = false;
                                        });
                                     },
                                  child: Container(
                                   color:isIconClicked? Colors.grey :Colors.transparent,
                                    child: Icon(Icons.apps_outlined,color: Colors.white,)),
                                ),
                                 SizedBox(width: 8,),
                                GestureDetector(
                                  onTap: () {
                                     setState(() {
                                  isIconClicked = false;
                                  isListClicked = true;
                                });
                                  },
                                  child: Container(
                                    color: isListClicked ? Colors.grey : Colors.transparent,
                                    child: Icon(Icons.format_list_bulleted,color: Colors.white,)),
                                ),
                                 SizedBox(width: 10,),
                                    Text(
                                      'Projects',
                                    style: GoogleFonts.poppins(
                                     fontSize: 14,
                                     fontWeight: FontWeight.w500,
                                     color: Colors.white
                                    ),
                                  ),
                                ],
                               ),

                               Row(
                                 children: [
                                      CommonUseButton(
                                       height: 25,
                                       width: 86.49,
                                       borderradius: BorderRadius.circular(4),
                                       gradient: const LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                        Color.fromRGBO(26, 97, 237, 1),
                                        Color.fromRGBO(17, 186, 227, 1)
                                      ]),
                                       text: 'Create a project',
                                       textStyle: GoogleFonts.poppins(
                                       color: Colors.white,
                                       fontSize: 7,
                                       fontWeight: FontWeight.w500
                                      ), 
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => CreateProjectScreen(),));
                                      },),
                                      SizedBox(width: 10,),
                                      Container(
                                       height: 25,
                                       width: 25,
                                       decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(4),
                                         color: Colors.white
                                       ),
                                       child: Image.asset('assets/icons/double arrow.png',
                                       height: 11.26,width: 12.87,),
                                      ),
                                      SizedBox(width: 10,),
                                        Container(
                                       height: 25,
                                       width: 25,
                                       decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(4),
                                         color: Colors.white
                                       ),
                                       child: Image.asset('assets/icons/Vector (1).png',
                                       height: 11.26,width: 12.87,),
                                      )
                                 ],
                               ),
                         ],
                       ),
                     ),
                  isIconClicked ? CommonUseGridContainer() : Container(),
                  isListClicked ? Grid_View_Class() : Container(),
                  
                   ],
                 ),
               ),
           ],
        ),
      )
    );
  }
}

class Reuseableheaderimage extends StatelessWidget {
  const Reuseableheaderimage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/Group 1171275926.png',fit: BoxFit.cover,height: 13.2,width: 116,),
          Image.asset('assets/Ellipse 1464.png',fit: BoxFit.cover,height: 40,width: 40,)
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class commonusecontainer extends StatelessWidget {
  const commonusecontainer({
    super.key, 
    required this.text,
    required this.text2
  });
  final String text;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 338,
      decoration: BoxDecoration(
        color: Color.fromRGBO(30, 34, 53, 1),
        borderRadius: BorderRadius.circular(4)
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                  Text(text,
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.white
                    ),),
                    SizedBox(width: 20),
                       Text(text2,
                    style: GoogleFonts.poppins(
                      fontSize: 8,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontStyle: FontStyle.italic
                    ),),]),
                Row(
                  children: [
        
                    Container(
                      height: 20,
                      width: 36,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                      color: Color.fromRGBO(83, 202, 253, 0.8)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset('assets/icons/3dot.png',fit: BoxFit.cover,height: 12,width: 3.43,),
                          Image.asset('assets/icons/dropdown.png',fit: BoxFit.cover,height: 4,width: 8,)
                        ],
                      ),
                    ),
                    SizedBox(width: 15,),
                    Icon(Icons.keyboard_arrow_down,color: Colors.white,)
                  ],
                ),
              ],
            
          
        ),
      ),
    );
  }
}