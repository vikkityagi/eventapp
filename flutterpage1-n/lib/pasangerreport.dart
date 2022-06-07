import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutterpage1/second.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class PasangerReport extends StatefulWidget {
  const PasangerReport({Key? key}) : super(key: key);
  @override
  State<PasangerReport> createState() => _MyAppState();
}

class _MyAppState extends State<PasangerReport> {
  @override
  Widget build(BuildContext cntext) {
    return MaterialApp(
      title: 'See Pasanger Report',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyAppSecondPage()),
            ),
          ),
          title: Text('See Pasanger Report'),
        ),
        body: BodyWidget(),
      ),
    );
  }
}

class BodyWidget extends StatefulWidget {
  @override
  BodyWidgetState createState() {
    return new BodyWidgetState();
  }
}

class BodyWidgetState extends State<BodyWidget> {
  final TextEditingController _controller1 = TextEditingController();
  // String serverResponse = 'Server Response';
  String serverResponse1 = '';
  String serverResponse2 = '';
  String serverResponse3 = '';
  String serverResponse4 = '';
  String serverResponse5 = '';
  String serverResponse6 = '';
  String serverResponse7 = '';
  String serverResponse8 = '';
  String serverResponse9 = '';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(32.0),
      child: Align(
        alignment: Alignment.topCenter,
        child: SizedBox(
          width: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: _controller1,
                decoration: new InputDecoration(
                    border: new OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.teal)),
                    hintText: 'Enter Report Id',
                    // helperText: 'Keep it short, this is just a demo.',
                    labelText: 'Id',
                    prefixIcon: const Icon(
                      Icons.perm_identity,
                      color: Colors.green,
                    ),
                    prefixText: ' ',
                    // suffixText: "C'",
                    suffixStyle: const TextStyle(color: Colors.green)),
                // )
              ),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text('send request to server'),
                onPressed: () {
                  _makeGetRequest(_controller1.text);
                },
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    '\n\n' +
                        'Report Id : ' +
                        serverResponse1 +
                        '\n\n' +
                        'Name : ' +
                        serverResponse2 +
                        '\n\n' +
                        'Gender : ' +
                        serverResponse3 +
                        '\n\n' +
                        'Age : ' +
                        serverResponse4 +
                        '\n\n' +
                        'Injury Type : ' +
                        serverResponse5 +
                        '\n\n' +
                        'Nationality : ' +
                        serverResponse6 +
                        '\n\n' +
                        'Address : ' +
                        serverResponse7 +
                        '\n\n' +
                        'Nominee : ' +
                        serverResponse8 +
                        '\n\n' +
                        'Accident Reason : ' +
                        serverResponse9,
                    style: TextStyle(fontSize: 15)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _makeGetRequest(String id) async {
    final url = Uri.parse('http://192.168.43.129:2600/api/auth/' + id);
    Response response = await http.get(url);
    setState(() {
      final jsonData = jsonDecode(response.body);
      serverResponse1 = jsonData['data'][0]['report_id'];
      serverResponse2 = jsonData['data'][0]['pasanger_name'];
      serverResponse3 = jsonData['data'][0]['pasanger_gender'];
      serverResponse4 = jsonData['data'][0]['pasanger_age'];
      serverResponse5 = jsonData['data'][0]['injury_type'];
      // serverResponse6 = jsonData['data'][0]['mobile_number'];
      serverResponse6 = jsonData['data'][0]['nationality'];
      serverResponse7 = jsonData['data'][0]['address'];
      serverResponse8 = jsonData['data'][0]['nomanee'];
      serverResponse9 = jsonData['data'][0]['accident_reason'];
    });
  }
}

class Weather {
  Weather({required this.name, required this.desc, required this.temp});
  final String name; // non-nullable
  final String desc; // non-nullable
  final String temp; // nullable

  factory Weather.fromJson(Map<String, dynamic> data) {
    final name = data['name'] as String; // cast as non-nullable String
    final desc = data['desce'] as String; // cast as non-nullable String
    final temp = data['temp'] as String; // cast as nullable int
    return Weather(name: name, desc: desc, temp: temp);
  }
}
