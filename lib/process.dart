import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:influence_techno_lab/screens/appleWalletCard.dart';
import 'package:xml/xml.dart' as xml;
import 'api.dart';

class Process extends StatefulWidget {
  const Process({Key? key}) : super(key: key);

  @override
  State<Process> createState() => _ProcessState();
}

class _ProcessState extends State<Process> {
  @override
  void initState() {
    super.initState();
    getdata();
  }

  Future<void> getdata() async {
    try {
      String user = await loginUser();
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(user)));
      final document = xml.XmlDocument.parse(user);
      final jsonString = document.rootElement.text;
      Map<dynamic, dynamic> data = jsonDecode(jsonString);

      // Navigator.of(context).push(MaterialPageRoute(
      //   builder: (context) => AppleWalletCard(map: data),
      // ));
    } catch (error) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(error.toString())));
      // Handle errors (e.g., show an error message to the user)
      print('Error: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(color: Colors.black),
      ),
    );
  }
}
