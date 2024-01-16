import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {

  bool swicth1=true;
  bool swicth2=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: AppBar(
          backgroundColor: Color.fromARGB(255, 243, 243, 243),
          title: Text("Edit Profile",style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.grey
          ),),
          centerTitle: true,
        ),
      ),

      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
            color: Color.fromARGB(255, 243, 243, 243),
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("My details",style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black
              ),),

              SizedBox(height: 10,),

              box1(),

              SizedBox(height: 20,),

              Text("Links",style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black
              ),),

              SizedBox(height: 10,),

              box2(),

              Container(height: 50,)

            ],
          ),
        ),
      ),
    );
  }

  box1()
  {
    return Container(
      height: 400,
      width: double.infinity,
      padding: EdgeInsets.all(15).copyWith(top: 25,left: 25),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10))
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset("asset/profile1.png",height: 100,),

              SizedBox(width: 50,),

              Container(
                height: 44,
                width: 150,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 229, 229, 229),
                  borderRadius: BorderRadius.all(Radius.circular(50))
                ),

                child: Center(
                  child: Text("Add photo",style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w600
                  ),),
                ),
              )
            ],
          ),

          SizedBox(height: 35,),

          textField(title: "Full Name", hint: "E.g. Ayush Sharma"),

          SizedBox(height: 20,),

          textField(title: "Job title / short bio", hint: "E.g. Sales manager")
        ],
      ),
    );
  }

  box2()
  {
    return Container(
      height: 300,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))
      ),

      child: Container(
        padding: EdgeInsets.all(18).copyWith(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 55,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(60)),
                  color: Color.fromARGB(255, 229, 229, 229)
              ),
              
              child: Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add,color: Colors.black,size: 20,),
                    SizedBox(width: 15,),
                    Text("Add link",style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500
                    ),)
                  ],
                ),
              ),
            ),

            SizedBox(height: 30,),

            linkbox1(),
            SizedBox(height: 20,),
            linkbox2(),

          ],
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
              fontSize: 13,
              fontWeight: FontWeight.w500
          ),),

          SizedBox(height: 10,),

          Container(
            padding: EdgeInsets.all(10).copyWith(top: 24),
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.grey,
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

  Widget linkbox1()
  {
    return Container(
      width: double.infinity,
      height: 65,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Color.fromARGB(255, 244, 244, 244)
      ),

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          Container(
              margin: EdgeInsets.only(top: 25,left: 15),
              height: 15,
              child: Image.asset("asset/dots.png")),

          SizedBox(width: 15,),

          Center(
            child: Text("Collect contacts",style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),),
          ),

          SizedBox(width: 10,),

          Center(
            child: Container(
              margin: EdgeInsets.only(right: 14,top: 0),
              width: 90,
              height: 30,
              decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.all(Radius.circular(40))
              ),

              child: Center(
                child: Text("TRY IT FREE",style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 12
                ),),
              ),
            ),
          ),

          Expanded(
            child: Container(
              child: Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height:20,
                  width: 80,
                  child: CupertinoSwitch(
                    value: swicth1,
                    onChanged: (bool value) {
                      setState(() {
                        swicth1=value;
                      });
                    },),
                ),
              ),
            ),
          )

        ],
      ),
    );
  }

  Widget linkbox2()
  {
    return Container(
      width: double.infinity,
      height: 65,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Color.fromARGB(255, 244, 244, 244)
      ),

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          Container(
              margin: EdgeInsets.only(top: 25,left: 15),
              height: 15,
              child: Image.asset("asset/dots.png")),

          SizedBox(width: 15,),

          Center(
            child: Text("Save contact",style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),),
          ),

          SizedBox(width: 20,),

          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 30),
              child: Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height:20,
                  width: 50,
                  child: CupertinoSwitch(
                    value: swicth2,
                    onChanged: (bool value) {
                      setState(() {
                        swicth2=value;
                      });
                    },),
                ),
              ),
            ),
          )

        ],
      ),
    );
  }
}
