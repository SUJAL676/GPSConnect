import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:influence_techno_lab/screens/ContactTiles.dart';
import 'package:influence_techno_lab/screens/GPSConnect.dart';




class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
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
                  child: Text("Settings",style: GoogleFonts.poppins(
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

        body: Stack(
          children: [
            Container(
              color: Color.fromARGB(255, 243, 243, 243),
            ),

            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 20,left: 20),
                width: double.infinity,
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)
                  )
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("January",style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Colors.grey,
                      fontWeight: FontWeight.w600
                    ),),

                    Expanded(
                      child: ListView.builder(
                        itemCount: 1,
                        itemBuilder: (context,index)
                        {
                          return GestureDetector(
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>GPSConnect()));
                              },
                              child: ContactTiles());
                        },
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

}
