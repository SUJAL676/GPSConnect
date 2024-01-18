import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:influence_techno_lab/modelClass.dart';
import 'package:xml/xml.dart' as xml;

import 'GlobalVarible.dart';

Future parseXmlToJson(String xmlString) async {
  final document = xml.XmlDocument.parse(xmlString);
  final jsonString = document.rootElement.text;
  Map<dynamic,dynamic> Data = jsonDecode(jsonString);

  print(Data["FirstName"]);

  Global().Name=Data["FirstName"];

  print(Global().Name);

  // Global().Gmap=Data;

  // data().list= List.from(Data).map<User>((item) => User.fromMap(item)).toList();

  // User(Data["FirstName"],Data["LastName"],Data["UserMobile"],Data["UserEmailID"],Data["qrCode"]);

  // User(
  //     Data["FirstName"],
  //     Data["LastName"],
  //     Data["UserMobile"],
  //     Data["UserEmailID"],
  //     Data["qrCode"]
  // );
}

Future<String> loginUser() async {
  final String apiUrl = "https://cruiseapi.influencetechnolabs.com/getdata.asmx/connectPro";

  try {
    final response = await http.post(
      Uri.parse(apiUrl),
      body: {
        "searchData":"ajay.jain@influencetechnolabs.com()123456()B2B()12345678()^&*login^&*https://connect.gps-india.com^&*login"
      }
    );

    if (response.statusCode == 200) {
      print('Login Successful');

      // parseXmlToJson(response.body);

      return response.body;
    } else {

      print('Login failed. Status code: ${response.statusCode}');
      print(response.body);
      return response.body;
    }
  } catch (e) {
    print('Error: $e');
    return e.toString();
  }
}
