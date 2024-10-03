import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Grid_View_Class extends StatefulWidget {
  @override
  _Grid_View_ClassState createState() => _Grid_View_ClassState();
}

class _Grid_View_ClassState extends State<Grid_View_Class> {
 bool isExpanded = false;

  void toggleExpanded() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            ExpandableProjectInfo(
              isExpanded: isExpanded,
              toggleExpand: toggleExpanded,
              text: 'Project 1',
              text2: 'Review counts: 0',
              textstyle: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.white),
              textstyle1: GoogleFonts.poppins(fontSize: 8,fontStyle: FontStyle.italic, color: Colors.white),
            ),
            SizedBox(height: 14),
            ExpandableProjectInfo(
              isExpanded: isExpanded,
              toggleExpand: toggleExpanded,
              text: 'Project 2',
              text2: 'Review counts: 2',
              textstyle: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.white),
              textstyle1: GoogleFonts.poppins(fontSize: 8, fontStyle: FontStyle.italic, color: Colors.white),
            ),
            SizedBox(height: 14),
            ExpandableProjectInfo(
              isExpanded: isExpanded,
              toggleExpand: toggleExpanded,
              text: 'Project 3',
              text2: 'Review counts: 1',
              textstyle: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.white),
              textstyle1: GoogleFonts.poppins(fontSize: 8,fontStyle: FontStyle.italic,  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class ExpandableProjectInfo extends StatefulWidget {
  final bool isExpanded;
  final VoidCallback toggleExpand;
  final String text;
  final String text2;
  final TextStyle textstyle;
  final TextStyle textstyle1;

 const ExpandableProjectInfo({
    super.key, 
    required this.isExpanded, 
    required this.toggleExpand,
    required this.text,
    required this.text2,
    required this.textstyle,
    required this.textstyle1,
  });


  @override
  State<ExpandableProjectInfo> createState() => _ExpandableProjectInfoState();
}

class _ExpandableProjectInfoState extends State<ExpandableProjectInfo> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      width: 345,
      height: isExpanded ? 219 : 42,
      decoration: BoxDecoration(
        color: Color.fromRGBO(30, 34, 53, 1),
        borderRadius: BorderRadius.circular(4),
      ),
     child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 12),
                            Text(
                             widget.text,
                             style: widget.textstyle,
                            ),
                            SizedBox(width: 20),
                            Text(
                             widget.text2,
                             style: widget.textstyle1,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              height: 20,
                              width: 36,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: Color.fromRGBO(83, 202, 253, 0.8),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Image.asset(
                                    'assets/icons/3dot.png',
                                    fit: BoxFit.cover,
                                    height: 12,
                                    width: 3.43,
                                  ),
                                  Image.asset(
                                    'assets/icons/dropdown.png',
                                    fit: BoxFit.cover,
                                    height: 4,
                                    width: 8,
                                  ),
                                ],
                              ),
                            ),
                          IconButton(
                          icon: Icon(
                            isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            setState(() {
                              isExpanded = !isExpanded;  
                            });
                          },
                        ),
                          ],
                        ),
                      ],
                    ),
            if (isExpanded) ...[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                child: Text(
                  'Supporting community-based food projects:\nadvisory & training services on participatory\nvideo proposals for planning, sharing and\nfundraising purposes.',
                  style: GoogleFonts.poppins(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 25),
                child: RichText(
                  textAlign: TextAlign.start,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Project Date:',
                        style: GoogleFonts.poppins(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(100, 107, 117, 1),
                        ),
                      ),
                      TextSpan(
                        text: '      2024-03-14',
                        style: GoogleFonts.poppins(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
