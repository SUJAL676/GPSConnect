import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactTiles extends StatefulWidget {
  const ContactTiles({super.key});

  @override
  State<ContactTiles> createState() => _ContactTilesState();
}

class _ContactTilesState extends State<ContactTiles> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: 60,
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: Colors.orange,
            child: Center(child: Text("JD",style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.white
            ),),),
          ),


          SizedBox(width: 10,),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("John",style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontSize: 14
                  ),),
                  SizedBox(width: 5,),
                  Text("Doe",style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      fontSize: 14
                  ),),

                ],
              ),

              Text("January 8, 2024 | Doe Inc. | Miami , FL | Miami |",style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: 12
              ),),
            ],
          ),

          // SizedBox(width: 30,),

          Expanded(
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                   height: 40,
                  child: Center(child: Image.asset("asset/threedot.png",height: 20,))),
            ),
          )

        ],
      ),
    );
  }
}
