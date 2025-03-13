import 'package:dumy/login_signup_screen/Login_page.dart';
import 'package:dumy/login_signup_screen/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Image.asset('assets/images/welcome image.png'),
            SizedBox(height: 40,),
            Center(
              child: Text('  Discover Your\nDream Job here',style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 35,
                color: Color(0xff1F41BB)
              ),),
            ),
            SizedBox(height: 20,),
            Center(
              child: Text('Explore all the existing job roles based on your\n                   interest and study major',style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
              ),),
            ),
            SizedBox(height: 75,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context, MaterialPageRoute(
                        builder: (context) => LoginPage(),));
                  },
                  child: Container(
                    width: MediaQuery.sizeOf(context).width*0.38,
                      height: MediaQuery.sizeOf(context).height*0.09,
                      decoration: BoxDecoration(
                          color: Color(0xff1F41BB),
                        borderRadius: BorderRadius.circular(10)
                      ),
                    child: Center(
                      child: Text("Login",style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffFFFFFF)
                      ),),
                    ),
                  ),
                ),
                SizedBox(width: 15,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context, MaterialPageRoute(
                      builder: (context) => SignupPage(),));
                  },
                  child: Container(
                    width: MediaQuery.sizeOf(context).width*0.38,
                    height: MediaQuery.sizeOf(context).height*0.09,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(
                      child: Text("Register",style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff000000)
                      ),),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
