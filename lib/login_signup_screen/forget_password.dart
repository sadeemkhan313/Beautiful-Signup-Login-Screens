import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20,top: 110),
          child: Column(
            children: [
              Center(
                child: Text("Forget Password?",style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  fontSize: 30,
                  color: Color(0xff1F41BB),
                ),),
              ),
              SizedBox(height: 26,),
              Center(
                child: Text("Create new password",style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  // color: Color(0xff1F41BB),
                ),),
              ),
              SizedBox(height: 54,),
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
        SizedBox(height: 10,),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: "*",style: TextStyle(color: Color(0xff1F41BB), fontWeight: FontWeight.bold),
            children: [
              TextSpan(
                text: "  We will send you a message to set or reset\nyour new password",
                style: TextStyle(color: Color(0xff676767),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              )],
          )
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
                  child: Text("Submit",style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffFFFFFF)
                  ),),
                ),
              ),
            ],

          ),
        ),
      ),
    );
  }
}
