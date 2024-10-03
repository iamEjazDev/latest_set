import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latest_app/login_screen/login_screen.dart';
import 'package:latest_app/splash_screen/splash_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromRGBO(15, 40, 53, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 55.px,)
        ,            CommonUseImage(Height: 23.59.px,
        Width: 315.px,),
        SizedBox(height: 40.px,),
         Padding(
           padding: EdgeInsets.all(10.px),
           child: Container(
              height: 80.h,
              width: 95.w,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                color: Color.fromRGBO(6, 7, 12, 1),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 26.px),
                    Text("Create an Account",style: GoogleFonts.poppins(
                      fontSize: 24.px,color: Colors.white,fontWeight: FontWeight.w700
                    ),), 
                     Text("Don't Let Outdated Documents Hold You Back!",style: GoogleFonts.poppins(
                      fontSize: 12.px,color: Colors.white,fontWeight: FontWeight.w400
                    ),),
                     SizedBox(height: 26.px,),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CommonTextformfield(
                      Text: "First Name",
                         hintStyle: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(106, 106, 106, 1)
                      ),
                      Width: 147,
                      textAlign: TextAlign.center,
                    ),
                    
                    CommonTextformfield(
                      Text: "Last Name",
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(106, 106, 106, 1)
                      ),
                      Width: 147,
                      textAlign: TextAlign.center,
                    ),
                      ],
                    ),
                    SizedBox(height: 25.px,),
                    CommonTextformfield(Width: 312, Text: "Enter your Email",
                       hintStyle: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(106, 106, 106, 1)
                      ),
                      textAlign: TextAlign.start,),
                    SizedBox(height: 25.px,),
                       CommonTextformfield(Width: 312, Text: "Enter your Password",
                          hintStyle: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(106, 106, 106, 1)
                      ),
                       textAlign: TextAlign.start,obscureText: true,),
                      SizedBox(height: 10.px,),
                       Image.asset("assets/password.png",height: 5.px,width: 310,),
                       SizedBox(height: 10.px),
                       Text("Use 8 or more characters with a mix of letters,\n numbers & symbols.",
                       textAlign: TextAlign.center,
                       style: GoogleFonts.poppins(
                        fontSize: 12.px,
                        fontWeight: FontWeight.w400,
                        color: Colors.white
                       ),),
                       SizedBox(height: 16.px),
                       CommonTextformfield(Width: 312, Text: "Confirm Password",
                          hintStyle: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(106, 106, 106, 1)
                      ),
                        textAlign: TextAlign.start,obscureText: true,),
                      SizedBox(height: 30.px),
                      CommonUseButton(
                        height: 60.px,
                        width: 250.px,
                        gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                        Color.fromRGBO(26, 97, 237, 1),
                        Color.fromRGBO(17, 186, 227, 1)
                      ]),
                        onPressed: () {
                           Navigator.push(context, MaterialPageRoute(
                              builder: (context) => LoginScreen(),)
                                );}, 
                        borderradius: BorderRadius.circular(12),
                        text: "Continue",
                        textStyle: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w500
                   ),
                      ),
                      SizedBox(height: 8.px,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Already a member?",style: GoogleFonts.poppins(
                            fontSize: 14.px,
                            fontWeight: FontWeight.w400,
                            color: Colors.white
                          ),),
                          TextButton(
                            onPressed: () { 
                         Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                          }, 
                          child: Text("Sign In",style: GoogleFonts.poppins(
                            fontSize: 14.px,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(17, 186, 227, 1)
                          ),))
                        ],
                      )
                  ],
                ),
              ),
            ),
         ),
          ],
        ),
      ),
    );
  }
}

class CommonUseButton extends StatelessWidget {
  const CommonUseButton({
    super.key, 
    required this.height,
    required this.width,
    required this.text,
    this.textStyle,
    this.gradient,
    this.bordercolor,
    required this.onPressed,
    required this.borderradius,
  });
   final double height;
   final double width;
   final String  text;
   final TextStyle? textStyle;
   final Gradient? gradient;
   final BoxBorder? bordercolor;
   final VoidCallback onPressed;
   final BorderRadiusGeometry borderradius;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration:  BoxDecoration(
        borderRadius:borderradius,
        gradient: gradient,
        border: bordercolor
      ),
      child: TextButton(
        onPressed:onPressed,
       child: Text(text,style:textStyle,)),
    );
  }
}

class CommonTextformfield extends StatelessWidget {
   CommonTextformfield({
    this.height,
    required this.Width,
    required this.Text, 
    required this.textAlign,
    this.obscureText=false,
    this.suffixIcon = false,
    this.hintStyle,
    
  });
  final double? height;
  final double Width;
  final String Text;
  final TextAlign textAlign;
  final bool obscureText;
  final bool suffixIcon;
  final TextStyle? hintStyle;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.px,
      width: Width,
      child:TextFormField(
        
        obscureText: obscureText,
        textAlign: textAlign,
        cursorColor: Colors.white,
        style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
    filled: true,
    fillColor: const Color.fromRGBO(30, 34, 53, 1),
    hintText: Text,
    hintStyle: hintStyle,
    border: OutlineInputBorder(
      
      borderSide: BorderSide.none, 
      borderRadius: BorderRadius.circular(12.0),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(12.0), 
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(12.0), 
      ),
     suffixIcon: suffixIcon ? Icon(Icons.search,color: Color.fromRGBO(255, 255, 255, 1),) : null,
      ),
     ),            
    );
  }
}