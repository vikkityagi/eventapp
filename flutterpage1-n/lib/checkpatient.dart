import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutterpage1/second.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class PatientIDPage extends StatefulWidget {
  const PatientIDPage({Key? key}) : super(key: key);
  @override
  State<PatientIDPage> createState() => _MyAppState();
}

class _MyAppState extends State<PatientIDPage> {
  @override
  Widget build(BuildContext cntext) {
    return MaterialApp(
      title: 'Gilman weather data..',
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
          title: Text('Patient Inf..'),
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
  // String serverResponse9 = '';
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
                    hintText: 'Enter Patient Id',
                    helperText: 'Keep it short, this is just a demo.',
                    labelText: 'Patient Id',
                    prefixIcon: const Icon(
                      Icons.person,
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
                        'Arrival Date time  : ' +
                        serverResponse2 +
                        '\n\n' +
                        'mode_of_arrival : ' +
                        serverResponse3 +
                        '\n\n' +
                        'Gender : ' +
                        serverResponse4 +
                        '\n\n' +
                        'Patient Situation : ' +
                        serverResponse5 +
                        '\n\n' +
                        'Age : ' +
                        serverResponse6 +
                        '\n\n' +
                        'Mobile number : ' +
                        serverResponse7 +
                        '\n\n' +
                        'Address : ' +
                        '\n\n' +
                        serverResponse8,
                    style: TextStyle(fontSize: 15)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _makeGetRequest(String id) async {
    print(id);
    final url = Uri.parse('https://patientapp2.herokuapp.com/' + id);
    Response response = await http.get(url);
    setState(() {
      final jsonData = jsonDecode(response.body);
      serverResponse1 = jsonData['data'][0]['patient_id'];
      serverResponse2 = jsonData['data'][0]['arrival_date_time'];
      serverResponse3 = jsonData['data'][0]['mode_of_arrival'];
      serverResponse4 = jsonData['data'][0]['gender'];
      serverResponse5 = jsonData['data'][0]['patient_situation'];
      // serverResponse6 = jsonData['data'][0]['mobile_number'];
      serverResponse6 = jsonData['data'][0]['age'];
      serverResponse7 = jsonData['data'][0]['mobile_number'];
      serverResponse8 = jsonData['data'][0]['address'];
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
