import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeyDrop extends StatefulWidget {
  const HeyDrop({super.key});

  @override
  State<HeyDrop> createState() => _HeyDropState();
}

class _HeyDropState extends State<HeyDrop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [

            Container(
              color: Colors.white,
            ),

            Expanded(
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Container(
                      color: Colors.black,
                      width: double.infinity,
                      height: 50,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("HeyDrop",style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w500
                          ),),

                          SizedBox(width: 130,),
                          
                          Image.asset("asset/close.png",color: Colors.white,height: 15,),

                          SizedBox(width: 20,)
                        ],
                      )
                    ),

                    SizedBox(height: 20,),

                    CircleAvatar(backgroundColor: Colors.grey,radius: 35,),

                    SizedBox(height: 15,),

                    Text("We typically reply within a day",style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,

                    ),),

                    SizedBox(height: 5,),

                    Text("Ask us anything , or share your feedback",style: GoogleFonts.poppins(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey
                    ),),

                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: 200,
                          height: 30,
                          margin: EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Color.fromARGB(255, 243, 243, 243),
                          ),
                          child: Center(child: Text("Powered by Intercom",style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey
                          ),),),
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

      bottomNavigationBar: SafeArea(
        child: Container(
          height: 100,
          // color: Colors.black,
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: Colors.grey,
                width: 0.5
              )
            )
          ),

          child: Container(
            padding: EdgeInsets.only(left: 10,right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: "Start a conversion..",
                    border: InputBorder.none,
                    hintStyle: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 14
                    )
                  ),
                ),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Aa",style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),),

                    SizedBox(width: 15,),

                    Image.asset("asset/gif.png",height: 22,color: Colors.grey,),

                    SizedBox(width: 15,),

                    Icon(Icons.photo_camera_back,color: Colors.grey,),

                    Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text("Send",style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey
                        ),),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
