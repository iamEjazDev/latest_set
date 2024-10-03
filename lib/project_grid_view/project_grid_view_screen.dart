import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectGridViewScreen extends StatefulWidget {
  const ProjectGridViewScreen({super.key});

  @override
  State<ProjectGridViewScreen> createState() => _ProjectGridViewScreenState();
}

class _ProjectGridViewScreenState extends State<ProjectGridViewScreen> {
  bool isExpanded=false;
  bool isIconClicked = false;
  bool isListClicked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
               CommonUseGridContainer(key: Key('1')),
               CommonUseGridContainer(key: Key('2')),
          ],
        ),
      ),
    );
  }
}

class CommonUseGridContainer extends StatefulWidget {
  const CommonUseGridContainer({
    super.key});

  @override
  State<CommonUseGridContainer> createState() => _CommonUseGridContainerState();
}

class _CommonUseGridContainerState extends State<CommonUseGridContainer> {
  void _handleMenuSelection(String value) {
    switch (value) {
      case 'archive':
        break;
      case 'edit':
        break;
      case 'delete':
        break;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
      height: 240,
      width: 344,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Color.fromRGBO(30, 34, 53, 1)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 14,left: 18,right: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 0.3),
                    borderRadius: BorderRadius.circular(4)
                  ),
                  child: Image.asset('assets/icons/Vector (2).png',),
                ),
                    Container(
                            height: 25,
                            width: 36,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: Color.fromRGBO(83, 202, 253, 0.8),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(width: 4),
                                Image.asset(
                                  'assets/icons/3dot.png',
                                  fit: BoxFit.cover,
                                  height: 12,
                                  width: 3.43,
                                ),
                  //                  PopupMenuButton<String>(
                  //   onSelected: _handleMenuSelection,
                  //   itemBuilder: (BuildContext context) {
                  //     return [
                  //       PopupMenuItem<String>(
                  //         value: 'archive',
                  //         child: Text('Archive'),
                  //       ),
                  //       PopupMenuItem<String>(
                  //         value: 'edit',
                  //         child: Text('Edit Profile'),
                  //       ),
                  //       PopupMenuItem<String>(
                  //         value: 'delete',
                  //         child: Text('Delete Project'),
                  //       ),
                  //     ];
                  //   },
                  //  ),
                  //  SizedBox(width: 14,),
                               Icon(Icons.arrow_drop_down_outlined,color: Colors.white,)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 12),
                    Padding(
                      padding: const EdgeInsets.only(left: 18),
                      child: Text(
                        'Make it grow'
                      ,style: GoogleFonts.poppins(
                        fontSize:  18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                      ),),
                    ),
                    SizedBox(height: 3),
                    Padding(
                      padding: const EdgeInsets.only(left: 18),
                      child: Text('Supporting community-based food projects:\nadvisory & training services on participatory video\nproposals for planning, sharing and fundraising\npurposes.',
                      style: GoogleFonts.poppins(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: Colors.white
                      ),),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 42,
                          width: 87,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                               color: Color.fromRGBO(255, 255, 255, 0.6)
                            )
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 7,),
                              Text('06/02/2024',
                              style: GoogleFonts.poppins(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Colors.white
                              ),),
                               Text('Project Date',
                              style: GoogleFonts.poppins(
                                fontSize: 8,
                                fontWeight: FontWeight.w500,
                               color: Color.fromRGBO(255, 255, 255, 0.6)
                              ),)
                            ],
                          ),
                        ),
                        SizedBox(width: 26),
                          Container(
                      height: 42,
                      width: 87,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                           color: Color.fromRGBO(255, 255, 255, 0.6)
                        )
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 7,),
                          Text('0',
                          style: GoogleFonts.poppins(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: Colors.white
                          ),),
                           Text('Review count',
                          style: GoogleFonts.poppins(
                            fontSize: 8,
                            fontWeight: FontWeight.w500,
                           color: Color.fromRGBO(255, 255, 255, 0.6)
                          ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 18,)
                      ],
                    ),
                    
                  ],
                ),
                ),
    );
  }
}
