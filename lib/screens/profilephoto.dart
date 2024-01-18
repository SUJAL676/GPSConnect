import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:influence_techno_lab/process.dart';
import 'package:influence_techno_lab/screens/appleWalletCard.dart';

class ProfilePhoto extends StatefulWidget {
  const ProfilePhoto({super.key});

  @override
  State<ProfilePhoto> createState() => _ProfilePhotoState();
}

class _ProfilePhotoState extends State<ProfilePhoto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          title: Text("Profile photo",style: GoogleFonts.poppins(
            fontSize: 20,
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

            Text("Add a face to the name" , style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w500)),

            Text("You can always change it later" , style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500)),

            SizedBox(height: 30,),

            CircleAvatar(
              backgroundColor: Color.fromARGB(100, 193, 185, 185),
              radius: 70,
              child: Icon(Icons.person,size: 135,color: Colors.grey,),
            ),

            SizedBox(
              height: 20,
            ),

            Text("Ayush Sharma",style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w600
            ),),

            Expanded(
              child: Container(
                margin: EdgeInsets.all(15),
               child: Align(
                 alignment: Alignment.bottomCenter,
                 child: GestureDetector(
                   onTap: (){
                     Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Process()));
                   },
                   child: Container(
                     height: 60,
                     width: double.infinity,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.all(Radius.circular(10)),
                       color: Colors.black,
                     ),

                     child: Center(
                       child: Text("Add photo",style: GoogleFonts.poppins(
                         fontSize: 18,
                         fontWeight: FontWeight.w500,
                         color: Colors.white
                       ),),
                     ),

                   ),
                 ),
               ),
              ),
            )


          ],
        ),
      ),
      
    );
  }
}
