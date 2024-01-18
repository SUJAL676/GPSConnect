import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:influence_techno_lab/screens/appleWalletCard.dart';
import 'package:xml/xml.dart' as xml;
import 'api.dart';


class Process extends StatefulWidget {
  const Process({super.key});

  @override
  State<Process> createState() => _ProcessState();
}

class _ProcessState extends State<Process> {

  @override
  void initState() {
    super.initState();
    getdata();
  }

  getdata()
  async {

    String user = await loginUser();
    final document = xml.XmlDocument.parse(user);
    final jsonString = document.rootElement.text;
    Map<dynamic,dynamic> Data = jsonDecode(jsonString);
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> AppleWalletCard(map: Data)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: CircularProgressIndicator(color: Colors.black,),),);
  }
}
