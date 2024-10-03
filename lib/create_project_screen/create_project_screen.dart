import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latest_app/calander_picker/calander_picker.dart';
import 'package:latest_app/prolistview_screen/prolistview_screen.dart';
import 'package:latest_app/signup_screen/signup_screen.dart';
// ignore: must_be_immutable
class  CreateProjectScreen extends StatefulWidget {
  DateTime today = DateTime.now();
   CreateProjectScreen({super.key});

  @override
  State<CreateProjectScreen> createState() => _CreateProjectScreenState();
}

class _CreateProjectScreenState extends State<CreateProjectScreen> {
   String _selectedVisibility = 'Project Visibility';
   List<String> _options = ['Public', 'Private'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(     
        height: double.infinity,
        width: double.infinity,
          decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
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
              bottom: 0,
              left: 0,
                  child:Image.asset('assets/graph 2.png',height: 116.31,width: 165.22,),
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                     SizedBox(height: 31,),
                       Reuseableheaderimage(),
                       Divider(
                         thickness: 1,
                         color: Color.fromRGBO(255, 255, 255, 0.6),
                       ),
                       SizedBox(height: 15,),
                       Row(
                        children: [
                          SizedBox(width: 13),
                          GestureDetector 
                          (onTap: () {
                            Navigator.pop(context);
                          },
                            child: Icon(Icons.arrow_back,color:Color.fromRGBO(255, 255, 255, 0.6))),
                            SizedBox(width: 6,),
                          Text('Back',style: GoogleFonts.poppins(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color:Color.fromRGBO(255, 255, 255, 0.6)
                          ),)
                        ],
                       ),
                       
                       Padding(
                         padding:  EdgeInsets.only(top: 21,left: 16),
                         child: Text('Project Name',
                         style: GoogleFonts.poppins(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color:Color.fromRGBO(255, 255, 255, 0.6)
                         ),),
                       ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6,left: 15,right: 15),
                        child: SizedBox(
                          height: 40,
                          width: 345,
                          child: TextFormField(
                            cursorColor: Color.fromRGBO(255, 255, 255, 0.25),
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4),
                                borderSide: BorderSide(color: Color.fromRGBO(255, 255, 255, 0.25),),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4),
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(255, 255, 255, 0.25)
                                )
                              )
                            ),
                          ),
                        ),
                      ),
                         Padding(
                         padding:  EdgeInsets.only(top: 20,left: 16),
                         child: Text('Project Description',
                         style: GoogleFonts.poppins(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color:Color.fromRGBO(255, 255, 255, 0.6)
                         ),),
                       ),
                        Padding(
                        padding: const EdgeInsets.only(top: 6,left: 15,right: 15),
                        child: SizedBox(
                          height: 210,
                          width: 345,
                          child: TextFormField(
                            cursorColor: Color.fromRGBO(255, 255, 255, 0.25),
                            style: TextStyle(color: Colors.white),
                            maxLines: 261,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4),
                                borderSide: BorderSide(color: Color.fromRGBO(255, 255, 255, 0.25),),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4),
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(255, 255, 255, 0.25)
                                )
                              )
                            ),
                          ),
                        ),
                      ),  
                      SizedBox(height: 38),
                       Padding(
                         padding: const EdgeInsets.only(left: 15,right: 77),
                         child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Text('Project Date',
                             style: GoogleFonts.poppins(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color:Color.fromRGBO(255, 255, 255, 0.6)
                             ),
                             ),
                              Text('Project Visibilty',
                              style: GoogleFonts.poppins(
                               fontSize: 10,
                               fontWeight: FontWeight.w500,
                               color:Color.fromRGBO(255, 255, 255, 0.6)
                              ),),
                           ],
                         ),
                       ),
                       
                       SizedBox(height: 5,),
                       Padding(
                         padding:  EdgeInsets.only(left: 14,right: 14),
                         child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          CalendarTextField(),
                         SizedBox(
                        height: 48,
                        width: 144,
                        child: DropdownButtonFormField<String>(
                          icon: SizedBox.shrink(),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                              borderSide: BorderSide(
                            color: Color.fromRGBO(255, 255, 255, 0.25),  
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromRGBO(255, 255, 255, 0.25)
                              )
                            ),
                            filled: true,
                            fillColor: Colors.transparent,
                            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 18),
                            hintText: 'Project Visibility',
                            hintStyle: GoogleFonts.poppins(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(255, 255, 255, 0.6),
                            ),
                          ),
                          value: _selectedVisibility != 'Project Visibility' ? _selectedVisibility : null,
                          items: _options.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: GoogleFonts.poppins(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(255, 255, 255, 0.6),
                                ),
                              ),
                            );
                          }).toList(),
                          onChanged: (newValue) {
                            setState(() {
                              _selectedVisibility = newValue!;
                            });
                          },
                          dropdownColor: Colors.grey[900],
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      )
                        ],
                       ),
                       ),
                       SizedBox(height: 120,),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                         children: [
                           CommonUseButton(
                            height: 25,
                            width: 87,
                            borderradius: BorderRadius.circular(4),
                            bordercolor: Border.all(
                              color: Colors.white
                            ),
                            text: 'Cancel',
                            textStyle: GoogleFonts.poppins(
                              fontSize: 7,
                              fontWeight: FontWeight.w500,
                              color: Colors.white
                            ),
                            onPressed: () {},),
                            SizedBox(width: 20),
                        CommonUseButton(
                        height: 25,
                        width: 87,
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
                          fontSize: 7,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                          onPressed: () {},),
                          SizedBox(width: 15,)
                         ],
                       ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

