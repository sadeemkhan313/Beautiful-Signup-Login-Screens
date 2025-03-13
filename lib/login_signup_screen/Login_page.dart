import 'package:dumy/login_signup_screen/forget_password.dart';
import 'package:dumy/login_signup_screen/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 90),
            child: Column(
              children: [
                Center(
                  child: Text("Login here",style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    color: Color(0xff1F41BB),
                  ),),
                ),
                SizedBox(height: 26,),
                Center(
                  child: Text("Welcome back you’ve\n  "
                      "       been missed!",style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    // color: Color(0xff1F41BB),
                  ),),
                ),
                SizedBox(height: 74,),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Color(0xff1F41BB)),
                      ),
                      filled: true,
                      fillColor: Color(0XffF1F4FF),
                    label: Text('Email'),
                    hintText: 'Email',
                      hintStyle: GoogleFonts.poppins(
                        color: Color(0xff626262)
                      ),
                  ),
                ),
                SizedBox(height: 29,),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(

                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Color(0xff1F41BB)),
                    ),
                    filled: true,
                    fillColor: Color(0XffF1F4FF),
                    label: Text('Password'),
                    hintText: 'Password',
                    hintStyle: GoogleFonts.poppins(
                        color: Color(0xff626262)
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Align(
                  alignment: Alignment.topRight,
                  child: InkWell(
                    onTap: (){
                      Navigator.push(
                          context, MaterialPageRoute(
                          builder: (context) => ForgetPassword(),));
                    },
                    child: Text("Forgot your password?",style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Color(0xff1F41BB),
                    ),),
                  ),
                ),
                SizedBox(height: 30,),

                Container(
                  width: MediaQuery.sizeOf(context).width*0.9,
                  height: MediaQuery.sizeOf(context).height*0.07,
                  decoration: BoxDecoration(
                      color: Color(0xff1F41BB),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(
                    child: Text("Sign in",style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffFFFFFF)
                    ),),
                  ),
                ),
                SizedBox(height: 30,),

                Align(
                  alignment: Alignment.topCenter,
                  child: InkWell(
                    onTap: (){
                      Navigator.push(
                          context, MaterialPageRoute(
                          builder: (context) => SignupPage(),));
                    },
                    child: Text("Create new account",style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Color(0xff4949490),
                    ),),
                  ),
                ),
                SizedBox(height: 10,),
                Align(
                  alignment: Alignment.topCenter,
                  child: Text("Or continue with",style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Color(0xff1F41BB),
                  ),),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Image.asset('assets/images/google.png',scale: 5,),
                    SizedBox(width: 7,),
                    Image.asset('assets/images/facebook.png',scale: 5,),
                    SizedBox(width: 7,),
                    Image.asset('assets/images/apple.png',scale: 5,),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
