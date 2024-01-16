import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:influence_techno_lab/screens/contact.dart';
import 'package:influence_techno_lab/screens/myprofile.dart';
import 'package:influence_techno_lab/screens/settings.dart';
import 'package:influence_techno_lab/screens/shareIt.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _currentIndex = 3;

  List<dynamic> list=[
    MyProfileScreen(),
    ShareScreen(),
    ContactScreen(),
    SettingsScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],


      bottomNavigationBar: Container(
        width: double.infinity,
        height: 65,
        // color: Colors.black,

        child: Row(

          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            buildNavItem(0, "view.svg","My Profile",20),
            buildNavItem(1, "share.svg","Share it",18),
            buildNavItem(2, "user.svg", "contact", 18),
            buildNavItem(3, "settings.svg","Settings",18)

          ],

        ),
      ),
    );
  }

  Widget buildNavItem(int index, String icon,String text,double height) {
    return Expanded(
      child: InkWell(
        onTap: () => _onItemTapped(index),
        highlightColor: Colors.transparent,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 12),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: _currentIndex == index ? Colors.black : Colors.transparent,
                width: 2
              )
            )
          ),
          child: Column(
            children:
            [
              SvgPicture.asset("asset/$icon",
                height: height,
                color: _currentIndex == index ? Colors.black : Colors.grey,),
              SizedBox(height: 4,),
              Text(text,style: GoogleFonts.poppins(
                fontSize: 10,
                color: _currentIndex == index ? Colors.black : Colors.grey,
                fontWeight: FontWeight.w500
              ),)
            ],
          )
        ),
      ),
    );
  }
}
