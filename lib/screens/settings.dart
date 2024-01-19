import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:influence_techno_lab/screens/editprofile.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Container(
            color: Color.fromARGB(255, 243, 243, 243),
            padding: EdgeInsets.only(left: 15,right: 15),
            height: 40,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 2),
                  child: Text("Setting",style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600
                  ),),
                ),

                Expanded(
                  child: Row(
                    crossAxisAlignment:CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      customButton(text: 'Upgrade', color: Color.fromARGB(255, 255, 216, 0), textcolor: Colors.black, isicon: true),
                      SizedBox(width: 5,),
                      customButton(text: "Share Link", color: Colors.black, textcolor: Colors.white, isicon: false)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),

        body: Expanded(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(left: 15,right: 15),
            color: Color.fromARGB(255, 243, 243, 243),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                profileBox(),
                SizedBox(height: 10,),
                Text("Account",style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey
                ),),
                SizedBox(height: 5,),
                box1(),

                SizedBox(height: 20,),
                Text("Support",style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey
                ),),
                SizedBox(height: 10,),
                box2(islogout: false),
                SizedBox(height: 20,),
                box2(islogout: true),

                SizedBox(height: 15,),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Version 1.3.0 -",style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey
                    ),),

                    SizedBox(width: 5,),

                    Text("Terms",style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.black
                    ),),

                    SizedBox(width: 5,),

                    Text("and",style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey
                    ),),

                    SizedBox(width: 5,),

                    Text("Privacy",style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.black
                    ),),


                  ],
                )

              ],
            )
          ),
        ),
      ),
    );
  }

  customButton({required String text , required Color color , required Color textcolor , required bool isicon})
  {
    return Container(

      width: 90,
      height: 35,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(40))
      ),

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          isicon?Icon(Icons.diamond_outlined,color: textcolor,size: 13,):Container(),
          SizedBox(width: 4,),
          Text(text,style: GoogleFonts.poppins(
              color: textcolor,
              fontWeight: FontWeight.w500,
              fontSize: 12
          ),),
          SizedBox(width: 4,),

        ],
      ),
    );
  }

  double height = 140;

  Container profileBox()
  {
    return Container(
      width: double.infinity,
      height: height,
      margin: EdgeInsets.all(15).copyWith(left: 0,right: 0),
      padding: EdgeInsets.only(top: 10,left: 10,right: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: Colors.black,
                child: Center(child: Text("AS",style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.white
                ),),),
              ),

              Container(
                margin: EdgeInsets.only(left: 10),
                height: 38,
                child: Center(child: Text("Profile: Ayush Sharma",style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black
                ),)),
              ),

              Expanded(
                  child:Align(
                    alignment: Alignment.topRight,
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          height=height==140?65:140;
                        });
                      },
                      child: Container(
                          height: 40,
                          padding: EdgeInsets.only(left: 100),
                          child: height==140 ?Center(child: Image.asset("asset/upload.png",height: 16,)) :
                      Center(child: Image.asset("asset/down-arrow.png",height: 18,))),
                    ),
              ))
            ],
          ),

          height==140?SizedBox(height: 20,):SizedBox(height: 0,),

          height==140 ? Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(40)
              ),
              color: Colors.black,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.add,color: Colors.white,size: 18,),
                SizedBox(width: 10,),
                Text("Add another profile",style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w400
                ),)
              ],
            ),
          ) : Container()

        ],
      ),

    );
  }

  box2({required bool islogout})
  {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.white
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("Ask a question",style: GoogleFonts.poppins(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Colors.black
          ),),

          // SizedBox(width: 180,),

          islogout ? Expanded(
            child: Container(
              child: Align(
                alignment: Alignment.centerRight,
                  child: Image.asset("asset/logout.png",height: 20,)),
            ),
          ) :Expanded(
            child: Container(
              child: Align(
                alignment: Alignment.centerRight,
                  child: Image.asset("asset/next.png",height: 25,)),
            ),
          )
        ],
      ),
    );
  }

  box1()
  {
    return Container(
      padding: EdgeInsets.only(top: 15),
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: (){
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>EditProfile()));
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Edit profile",style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black
                ),),

                SizedBox(width: 220,),

                Image.asset("asset/next.png",height: 25,)
              ],
            ),
          ),

          SizedBox(height: 15,),

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("My account",style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black
              ),),

              SizedBox(width: 210,),

              Image.asset("asset/next.png",height: 25,)
            ],
          )
        ],
      ),

    );
  }
}
