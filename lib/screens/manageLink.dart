
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:influence_techno_lab/screens/homepage.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class ManageLink extends StatefulWidget {
  const ManageLink({super.key});

  @override
  State<ManageLink> createState() => _ManageLinkState();
}

class _ManageLinkState extends State<ManageLink> {

  bool swicth1 = true;
  bool swicth2= true;
  bool swicth3= true;
  bool swicth4= true;
  bool swicth5= false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          title: Text("Manage links",style: GoogleFonts.poppins(
              fontSize: 22,
              fontWeight: FontWeight.w700
          ),),

          centerTitle: true,
          leading: Icon(Icons.arrow_back),

          actions: [
            Container(
              margin: EdgeInsets.only(right: 15),
              child: Text("Skip",style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.w700
              ),),
            )
          ],
        ),
      ),

      body: Container(
        width: double.infinity,
        height: MediaQuery.sizeOf(context).height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Text("Add links relevant to your business" , style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500)),

            SizedBox(
              height: 4,
            ),

            Text("Tap to edit, drag & drop to rearrange" , style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500)),

            SizedBox(height: 30,),

            // SizedBox(height: 30,),


            box1(),
            box2(),
            box3(),
            box4(),
            box5(),

            Expanded(
              child: Container(
                margin: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 55,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          border: Border.all(
                              color: Colors.black,
                              width: 1.5
                          )
                      ),

                      child: Center(
                        child: Text("Add link",style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black
                        ),),
                      ),

                    ),
                    SizedBox(height: 10,),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>HomePage()));
                      },
                      child: Container(
                        height: 55,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.black,
                        ),

                        child: Center(
                          child: Text("Finish",style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.white
                          ),),
                        ),

                      ),
                    )
                  ],
                ),
              ),
            )


          ],
        ),
      ),

    );
  }

  Widget box1()
  {
    return Container(
      margin: EdgeInsets.all(15),
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
              margin: EdgeInsets.only(top: 25,left: 20),
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
            
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("UNLOCK",style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 12
                  ),),
                  SizedBox(width: 4,),
                  Icon(Icons.lock,color: Colors.white,size: 13,)
                ],
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

  Widget box2()
  {
    return Container(
      margin: EdgeInsets.all(15).copyWith(top: 5),
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
              margin: EdgeInsets.only(top: 25,left: 20),
              height: 15,
              child: Image.asset("asset/dots.png")),

          SizedBox(width: 15,),

          Center(
            child: Text("Save contact",style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),),
          ),

          SizedBox(width: 10,),

          Expanded(
            child: Container(
              child: Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height:20,
                  width: 80,
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

  Widget box3()
  {
    return Container(
      margin: EdgeInsets.all(15).copyWith(top: 5),
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
              margin: EdgeInsets.only(top: 25,left: 20),
              height: 15,
              child: Image.asset("asset/dots.png")),

          SizedBox(width: 15,),

          Center(
            child: Text("Call me",style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),),
          ),

          SizedBox(width: 10,),


          Expanded(
            child: Container(
              child: Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height:20,
                  width: 80,
                  child: CupertinoSwitch(
                    value: swicth3,
                    onChanged: (bool value) {
                      setState(() {
                        swicth3=value;
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

  Widget box4()
  {
    return Container(
      margin: EdgeInsets.all(15).copyWith(top: 5),
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
              margin: EdgeInsets.only(top: 25,left: 20),
              height: 15,
              child: Image.asset("asset/dots.png")),

          SizedBox(width: 15,),

          Center(
            child: Text("Email me",style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),),
          ),

          SizedBox(width: 10,),


          Expanded(
            child: Container(
              child: Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height:20,
                  width: 80,
                  child: CupertinoSwitch(
                    value: swicth4,
                    onChanged: (bool value) {
                      setState(() {
                        swicth4=value;
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

  Widget box5()
  {
    return Container(
      margin: EdgeInsets.all(15).copyWith(top: 5),
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
              margin: EdgeInsets.only(top: 25,left: 20),
              height: 15,
              child: Image.asset("asset/dots.png")),

          SizedBox(width: 15,),

          Center(
            child: Text("Social media icons",style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),),
          ),

          SizedBox(width: 10,),


          Expanded(
            child: Container(
              child: Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height:20,
                  width: 80,
                  child: CupertinoSwitch(
                    value: swicth5,
                    onChanged: (bool value) {
                      setState(() {
                        swicth5=value;
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
