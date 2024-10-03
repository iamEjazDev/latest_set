import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latest_app/prolistview_screen/prolistview_screen.dart';
import 'package:latest_app/signup_screen/signup_screen.dart';
import 'package:latest_app/splash_screen/splash_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromRGBO(15, 40, 53, 1),
      body: Stack(
        children: [
          Positioned(
            top: 65,
            right: 0,
            child: Image.asset(
              'assets/graph 1.png',
              height: 130.31,
              width: 198,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              'assets/graph 2.png',
              height: 117,
              width: 165,
            ),
          ),
         SizedBox(
            height: 100.h,
            width: 100.w,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 55.px),
                CommonUseImage(Height: 23.59, Width: 315),
                  SizedBox(height: 65.px),
                  SingleChildScrollView(
                    child: Container(
                      height: 535,
                      width: 95.w,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        color: Color.fromRGBO(6, 7, 12, 1),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 16.px),
                          Text(
                            "Login",
                            style: GoogleFonts.poppins(
                              fontSize: 24.px,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Divider(
                             thickness: 1,
                            color: Color.fromRGBO(255, 255, 255, 0.6),
                           ),
                         ),
                         SizedBox(height:  2.h),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             Text('User Name or Email:',
                         style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white
                         ),),
                         SizedBox(height:  1.h),
                         CommonTextformfield(Width: 319, Text: 'User Name or Email',
                            hintStyle: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(106, 106, 106, 1)
                      ),
                          textAlign: TextAlign.start,),
                           SizedBox(height:  5.h),
                         Text('Enter Password:',
                         style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white
                         ),),
                         SizedBox(height:  1.h),
                         CommonTextformfield(Width: 319, Text: 'Enter Password',
                            hintStyle: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(106, 106, 106, 1)
                      ),
                          textAlign: TextAlign.start,obscureText: true,),
                          ],
                        ),
                        
                         SizedBox(height: 10.h),
                         CommonUseButton(
                           height: 60,
                           width: 250,
                           borderradius: BorderRadius.circular(12), 
                          gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                          Color.fromRGBO(26, 97, 237, 1),
                          Color.fromRGBO(17, 186, 227, 1)
                        ]),
                            text: "Login", 
                            textStyle: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w500
                          ),
                         onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ProlistviewScreen(projects: [],),));
                         },),
                         SizedBox(height: 1.h,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Not a Member Yet?',style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),),
                               TextButton(onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen(),));
                               },
                                child: Text("Sign up",
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(17, 186, 227, 1)
                                ),))                              
                              ],
                            )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}