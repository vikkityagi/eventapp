// import 'package:flutter/material.dart';
// import 'package:flutterpage1/second.dart';
// import 'package:http/http.dart' as http;
// import 'package:http/http.dart';

// class OtherReport extends StatefulWidget {
//   const OtherReport({Key? key}) : super(key: key);
//   @override
//   State<OtherReport> createState() => _MyAppState();
// }

// class _MyAppState extends State<OtherReport> {
//   @override
//   Widget build(BuildContext cntext) {
//     return MaterialApp(
//       title: 'See Other Report',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           leading: new IconButton(
//             icon: new Icon(Icons.arrow_back, color: Colors.white),
//             onPressed: () => Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => MyAppSecondPage()),
//             ),
//           ),
//           title: Text('See Ist Report'),
//         ),
//         body: BodyWidget(),
//       ),
//     );
//   }
// }

// class BodyWidget extends StatefulWidget {
//   @override
//   BodyWidgetState createState() {
//     return new BodyWidgetState();
//   }
// }

// class BodyWidgetState extends State<BodyWidget> {
//   final TextEditingController _controller1 = TextEditingController();
//   String serverResponse = 'Server Response';

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       padding: const EdgeInsets.all(32.0),
//       child: Align(
//         alignment: Alignment.topCenter,
//         child: SizedBox(
//           width: 200,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: <Widget>[
//               TextField(
//                 controller: _controller1,
//                 decoration: new InputDecoration(
//                     border: new OutlineInputBorder(
//                         borderSide: new BorderSide(color: Colors.teal)),
//                     hintText: 'Enter Report Id',
//                     // helperText: 'Keep it short, this is just a demo.',
//                     labelText: 'Id',
//                     prefixIcon: const Icon(
//                       Icons.cloud,
//                       color: Colors.green,
//                     ),
//                     prefixText: ' ',
//                     // suffixText: "C'",
//                     suffixStyle: const TextStyle(color: Colors.green)),
//                 // )
//               ),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 child: Text('send request to server'),
//                 onPressed: () {
//                   _makeGetRequest(_controller1.text);
//                 },
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text(serverResponse),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   _makeGetRequest(String id) async {
//     final url = Uri.parse('http://192.168.68.102:3000/api/auth/' + id);
//     Response response = await http.get(url);
//     setState(() {
//       serverResponse = response.body;
//     });
//   }
// }

// class Weather {
//   Weather({required this.name, required this.desc, required this.temp});
//   final String name; // non-nullable
//   final String desc; // non-nullable
//   final String temp; // nullable

//   factory Weather.fromJson(Map<String, dynamic> data) {
//     final name = data['name'] as String; // cast as non-nullable String
//     final desc = data['desce'] as String; // cast as non-nullable String
//     final temp = data['temp'] as String; // cast as nullable int
//     return Weather(name: name, desc: desc, temp: temp);
//   }
// }

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutterpage1/second.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class OtherReport extends StatefulWidget {
  const OtherReport({Key? key}) : super(key: key);
  @override
  State<OtherReport> createState() => _MyAppState();
}

class _MyAppState extends State<OtherReport> {
  @override
  Widget build(BuildContext cntext) {
    return MaterialApp(
      title: 'See Other Report',
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
          title: Text('See Ist Report'),
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
  String serverResponse1 = '';
  String serverResponse2 = '';
  String serverResponse3 = '';
  String serverResponse4 = '';
  String serverResponse5 = '';
  String serverResponse6 = '';
  String serverResponse7 = '';
  String serverResponse8 = '';
  String serverResponse9 = '';
  String serverResponse10 = '';
  String serverResponse11 = '';
  String serverResponse12 = '';

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
                        'Arrival Date Time : ' +
                        serverResponse2 +
                        '\n\n' +
                        'Dispatch Date Time : ' +
                        serverResponse3 +
                        '\n\n' +
                        'Address : ' +
                        serverResponse4 +
                        '\n\n' +
                        'Vehicle Number: ' +
                        serverResponse5 +
                        '\n\n' +
                        'Patient Situation : ' +
                        serverResponse6 +
                        '\n\n' +
                        'Driver Injured : ' +
                        serverResponse7 +
                        '\n\n' +
                        'Driver Death: ' +
                        serverResponse8 +
                        '\n\n' +
                        'Pasanger Injured: ' +
                        serverResponse9 +
                        '\n\n' +
                        'Pasanger Death: ' +
                        serverResponse10 +
                        '\n\n' +
                        'Pedestrain Injured : ' +
                        serverResponse11 +
                        '\n\n' +
                        'Pedestrain Death : ' +
                        serverResponse12,
                    style: TextStyle(fontSize: 15)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _makeGetRequest(String id) async {
    final url = Uri.parse('http://192.168.43.129:3000/api/auth/' + id);
    Response response = await http.get(url);
    setState(() {
      // serverResponse = jsonDecode(response.body);
      final jsonData = jsonDecode(response.body);
      serverResponse1 = jsonData['data'][0]['report_id'];
      serverResponse2 = jsonData['data'][0]['date_time'];
      serverResponse3 = jsonData['data'][0]['reporting_date_time'];
      serverResponse4 = jsonData['data'][0]['address'];
      serverResponse5 = jsonData['data'][0]['vehicle_number'];
      serverResponse6 = jsonData['data'][0]['patient_situation'];
      serverResponse7 = jsonData['data'][0]['driverinjured'];
      serverResponse8 = jsonData['data'][0]['driverdeath'];
      serverResponse9 = jsonData['data'][0]['pasangerinjured'];
      serverResponse10 = jsonData['data'][0]['pasangerdeath'];
      serverResponse11 = jsonData['data'][0]['pedestraininjured'];
      serverResponse12 = jsonData['data'][0]['pedestraindeath'];
      // serverResponse1 = jsonData['data'][0]['report_id'];
      // final restaurant = Accident.fromJson(jsonData);
    });
  }
}

class Accident {
  Accident(
      {required this.report_id,
      required this.date_time,
      required this.reporting_date_time,
      required this.address,
      required this.vehicle_number,
      required this.patient_situation,
      required this.driverinjured,
      required this.driverdeath,
      required this.pasangerinjured,
      required this.pasangerdeath,
      required this.pedestraininjured,
      required this.pedestraindeath});
  final String report_id; // non-nullable
  final String date_time; // non-nullable
  final String reporting_date_time; // nullable
  final String address; // nullable
  final String vehicle_number; // nullable
  final String patient_situation; // nullable
  final String driverinjured; // nullable
  final String driverdeath; // nullable
  final String pasangerinjured; // nullable
  final String pasangerdeath; // nullable
  final String pedestraininjured; // nullable
  final String pedestraindeath; // nullable
  // final String pasangerinjured; // nullable
  // final String pasangerinjured; // nullable

  factory Accident.fromJson(Map<String, dynamic> data) {
    final report_id =
        data['report_id'] as String; // cast as non-nullable String
    final date_time =
        data['date_time'] as String; // cast as non-nullable String
    final reporting_date_time =
        data['reporting_date_time'] as String; // cast as nullable int
    final address = data['address'] as String; // cast as nullable int
    final vehicle_number =
        data['vehicle_number'] as String; // cast as nullable int
    final patient_situation =
        data['patient_situation'] as String; // cast as nullable int
    final driverinjured =
        data['driverinjured'] as String; // cast as nullable int
    final driverdeath = data['driverdeath'] as String; // cast as nullable int
    final pasangerinjured =
        data['pasangerinjured'] as String; // cast as nullable int
    final pasangerdeath =
        data['pasangerdeath'] as String; // cast as nullable int
    final pedestraininjured =
        data['pedestraininjured'] as String; // cast as nullable int
    final pedestraindeath =
        data['pedestraindeath'] as String; // cast as nullable int

    return Accident(
        report_id: report_id,
        date_time: date_time,
        reporting_date_time: reporting_date_time,
        address: address,
        vehicle_number: vehicle_number,
        patient_situation: patient_situation,
        driverinjured: driverinjured,
        driverdeath: driverdeath,
        pasangerinjured: pasangerinjured,
        pasangerdeath: pasangerdeath,
        pedestraininjured: pedestraininjured,
        pedestraindeath: pedestraindeath);
  }
}
