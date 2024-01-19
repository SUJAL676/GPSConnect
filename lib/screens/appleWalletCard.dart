import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:influence_techno_lab/screens/manageLink.dart';
import 'package:qr_flutter/qr_flutter.dart';

class AppleWalletCard extends StatefulWidget {
  // final Map<dynamic,dynamic>map ;
  const AppleWalletCard({super.key});

  @override
  State<AppleWalletCard> createState() => _AppleWalletCardState();
}

class _AppleWalletCardState extends State<AppleWalletCard> {


  @override
  Widget build(BuildContext context) {

    // print(map);

    List<Widget> list = [
      Card1(),
      Card2(),
      Card1()
    ];

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          title: Text("Apple Wallet card",style: GoogleFonts.poppins(
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
        padding: EdgeInsets.only(bottom: 15),
        width: double.infinity,
        height: MediaQuery.sizeOf(context).height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Container(
              child: Column(
                children: [
                  Text("When you meet someone, simply open your" , style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500)),

                  SizedBox(
                    height: 4,
                  ),

                  Text("Apple Wallet card to share your profile" , style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500)),

                  SizedBox(height: 10,),
                ],
              ),
            ),



            // SizedBox(height: 30,),


            Container(
              height: 500,
              width: double.infinity,
              margin: EdgeInsets.only(left: 15),
              child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return list[index];
                },
                itemCount: list.length,
                scrollDirection: Axis.horizontal,

              ),
            ),

            // Card1(),





            Expanded(
              child: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 45,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border.all(
                          color: Colors.black,
                          width: 1.5
                        )
                      ),

                      child: Center(
                        child: Text("Edit colors and logo",style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black
                        ),),
                      ),

                    ),
                    SizedBox(height: 10,),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ManageLink()));
                      },
                      child: Container(
                        height: 45,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.black,
                        ),

                        child: Center(
                          child: Text("Add to Apple Wallet",style: GoogleFonts.poppins(
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

  Widget Card2()
  {
    return Container(
      width: 290,
      height: 450,
      // color: Colors.black87,
      child: Stack(
        children: [
          Container(
            width: 265,
            height: 450,
            margin: EdgeInsets.all(15).copyWith(top: 10,right: 0),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 78, 34),
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),

            child: Stack(
              children: [
                Container(
                  width: 265,
                  height: 250,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 96, 57),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(120),
                      bottomRight: Radius.circular(120),
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10)
                    )
                  ),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(15),
                        width: 140,
                        height: 140,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 255, 113, 75),
                        ),

                        child: Image.asset("asset/profile1.png"),
                      ),

                      SizedBox(height: 20,),

                      // Text("${widget.map["FirstName"]} ${widget.map["LastName"]}",style: GoogleFonts.poppins(
                      //   fontSize: 16,
                      //   fontWeight: FontWeight.w500,
                      //   color: Colors.white
                      // ),),

                      Text("Ajay Jain",style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white
                      ),),

                      Text("Job Title",style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.white
                      ),)
                    ],
                  )
                ),

                Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      margin: EdgeInsets.only(right: 10,top: 18),
                        child: Icon(Icons.menu,color: Colors.white,size: 18,)))




              ],
            ),
          ),

          Container(
              margin: EdgeInsets.only(top: 250),
              child: Box(text: 'Save contact')),

          Container(
              margin: EdgeInsets.only(top: 295),
              child: Box(text: 'Navigate to my office')),

          Container(
              margin: EdgeInsets.only(top: 340),
              child: Box(text: 'Book an appointment')),

          Container(
              height: 50,
              margin: EdgeInsets.only(top: 380),
              // color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 15,
                    child: Image.asset("asset/facebook.png",)),

                SizedBox(width: 20,),

                SizedBox(
                    height: 15,
                    child: Image.asset("asset/twitter.png",)),

                SizedBox(width: 20,),

                SizedBox(
                    height: 15,
                    child: Image.asset("asset/linkedin.png",))
              ],
            ),
            ),

          Align(
            alignment: Alignment.topRight,
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
          )
        ],
      ),
    );
  }

  Widget Card1()
  {
    return Container(
      width: 320,
      height: 400,
      child: Stack(
        children: [
          Container(
            height: 370,
            padding: EdgeInsets.only(top: 40),
            margin: EdgeInsets.all(15).copyWith(top: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes the shadow position
                )
              ]
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      // child: Text("${widget.map["FirstName"]} ${widget.map["LastName"]}",style: GoogleFonts.poppins(
                      //   fontSize: 22,
                      //   fontWeight: FontWeight.w400
                      // ),),
                      child: Text("Ajay Jain",style: GoogleFonts.poppins(
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                      ),),
                    ),
                    SizedBox(width: 20,),
                    SizedBox(
                      height: 70,
                        child: Image.asset("asset/profile.png"))
                  ],
                ),

                SizedBox(
                  height: 30,
                ),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("PHONE",style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400
                        ),),
                        // Text(widget.map["UserMobile"],style: GoogleFonts.poppins(
                        //     fontSize: 10,
                        //     fontWeight: FontWeight.w400
                        // ),),
                        Text("9873230398",style: GoogleFonts.poppins(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                        ),),
                      ],
                    ),

                    SizedBox(
                      height: 50,
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("EMAIL",style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400
                        ),),
                        // Text(widget.map["UserEmailID"],style: GoogleFonts.poppins(
                        //     fontSize: 10,
                        //     fontWeight: FontWeight.w400
                        // ),),

                        Text("ajay.jain@influencetechnolabs.com",style: GoogleFonts.poppins(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                        ),),

                      ],
                    )

                  ],
                ),

                SizedBox(height: 30,),

                Center(
                  child: SizedBox(
                    height: 130,
                      // child: QrImageView(
                      //   data: widget.map["qrCode"],
                      //   version: QrVersions.auto,
                      //   size: 130,
                      // )
                    child: Image.asset("asset/qr.jpeg"),
                  ),
                )
              ],
            ),
          ),

          Align(
            alignment: Alignment.topRight,
            child: Container(
              margin: EdgeInsets.only(right: 16,top: 4),
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
          )
        ],
      ),
    );
  }

  Widget Box({
    required String text
})
  {
    return Container(
      margin: EdgeInsets.only(right: 20,left: 25),
      width: double.infinity,
      height: 35,
      color: Colors.white,
      child: Center(
        child: Text(text,style: GoogleFonts.poppins(
          fontSize: 8,
          fontWeight: FontWeight.w400,
          color: Color.fromARGB(255, 255, 96, 57)
        ),),
      ),
    );
  }

}


