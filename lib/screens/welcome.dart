import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:influence_techno_lab/api.dart';
import 'package:influence_techno_lab/screens/profilephoto.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text("Welcome to GPS Connect",style: GoogleFonts.poppins(
            fontSize: 26,
            fontWeight: FontWeight.w600
          ),),
        ) ,
      ),

      body: Container(
        margin: EdgeInsets.all(10).copyWith(top: 20),
        child: SingleChildScrollView(
          // physics: NeverScrollableScrollPhysics(),
          child: Column(
            children: [

               Center(
                child: Column(
                  children: [
                    Text("Let's Start with contact details you",style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                    ),),

                    Text("want to display on your card",style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600
                    ),)
                  ],
                ),
              ),

              SizedBox(height: 50,),


              textField(title: "Full name", hint: "E.g. John Smith"),

              SizedBox(height: 20,),

              textField(title: "Work email",hint: "E.g. john@mycompany.com"),

              SizedBox(height: 20,),

              textField(title: "Phone number",hint: "E.g. +9891129765"),

              SizedBox(height: 20,),

              GestureDetector(
                  onTap: (){

                    // loginUser();

                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>ProfilePhoto()));
                  },
                  child: Continue())


            ],
          ),
        ),
      ),
    );
  }

  SizedBox textField({
    required String title,
    required String hint,
})
  {
    return SizedBox(
      // color: Colors.black,
      width: double.infinity,
      height: 100,
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(title,style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w600
          ),),

          SizedBox(height: 10,),

          Container(
            padding: EdgeInsets.all(10).copyWith(top: 24),
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 2
              ),
              borderRadius: BorderRadius.all(Radius.circular(7))
            ),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: hint,
                border: InputBorder.none,
                hintStyle: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 14
                )
              ),
            ),
          )

        ],
      ),
    );
  }

  Container Continue()
  {
    return Container(
      // color: Colors.grey,
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.grey
      ),
      child: Center(
        child: Text("Continue",style: GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Colors.white
    ),
      ),

    ));
  }


}
