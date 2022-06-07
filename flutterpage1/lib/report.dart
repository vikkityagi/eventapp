import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
// import 'package:image_picker/image_picker.dart';
// import 'dart:async';

// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_number/mobile_number.dart';
import 'package:intl/intl.dart';

import 'accidentregister.dart';
import 'accidentstart.dart';
import 'mediaform.dart';

// pick image

// import 'package:http/http.dart' as http;
Future<Album> createAlbum(
    String report_id,
    String date_time,
    String reporting_date_time,
    String address,
    String vehicle_number,
    // String mobile_number,
    // String nationality,
    String patient_situation,
    String driverinjured,
    String driverdeath,
    String pasangerinjured,
    String pasangerdeath,
    String pedestraininjured,
    String pedestraindeath) async {
  final response = await http.post(
    Uri.parse('http://192.168.68.102:3000/api/auth/signup'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: json.encode(<String, String>{
      'report_id': report_id,
      'date_time': date_time,
      'reporting_date_time': reporting_date_time,
      'address': address,
      'vehicle_number': vehicle_number,
      // 'mobile_number': mobile_number,
      // 'nationality': nationality,
      'patient_situation': patient_situation,
      'driverinjured': driverinjured,
      'driverdeath': driverdeath,
      'pasangerinjured': pasangerinjured,
      'pasangerdeath': pasangerdeath,
      'pedestraininjured': pedestraininjured,
      'pedestraindeath': pedestraindeath,
    }),
  );

  if (response.statusCode == 200) {
    // If the server did return a 201 CREATED response,
    // then parse the JSON.
    print('result ' + '$Album.fromJson(jsonDecode(response.body))');
    return Album.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 201 CREATED response,
    // then throw an exception.
    throw Exception('Failed to create album.');
  }
}

class Album {
  final String report_id;
  final String date_time;
  final String reporting_date_time;
  final String address;
  final String vehicle_number;
  // final String mobile_number;
  // final String nationality;
  final String patient_situation;
  final String driverinjured;
  final String driverdeath;
  final String pasangerinjured;
  final String pasangerdeath;
  final String pedestraininjured;
  final String pedestraindeath;

  const Album({
    required this.report_id,
    required this.date_time,
    required this.reporting_date_time,
    required this.address,
    required this.vehicle_number,
    // required this.mobile_number,
    // required this.nationality,
    required this.patient_situation,
    required this.driverinjured,
    required this.driverdeath,
    required this.pasangerinjured,
    required this.pasangerdeath,
    required this.pedestraininjured,
    required this.pedestraindeath,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
        report_id: json['report_id'],
        date_time: json['date_time'],
        reporting_date_time: json['reporting_date_time'],
        address: json['address'],
        vehicle_number: json['vehicle_number'],
        // mobile_number: json['mobile_number'],
        // nationality: json['nationality'],
        patient_situation: json['patient_situation'],
        driverinjured: json['driverinjured'],
        driverdeath: json['driverdeath'],
        pasangerinjured: json['pasangerinjured'],
        pasangerdeath: json['pasangerdeath'],
        pedestraininjured: json['pedestraininjured'],
        pedestraindeath: json['pedestraindeath']

        // phoneno: json['phoneno']
        // phoneno: json['phoneno']
        );
  }
}

class ReportStart extends StatelessWidget {
  const ReportStart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter File Upload Example',
      home: UploadPage(),
    );
  }
}

class UploadPage extends StatefulWidget {
  const UploadPage({Key? key}) : super(key: key);

  // final String url;

  @override
  _UploadPageState createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  String location = 'Null, Click photo';
  static String Address = 'searching...';
  final TextEditingController _controller = TextEditingController();
  final TextEditingController controller1 = TextEditingController();
  final TextEditingController controller2 = TextEditingController();
  final TextEditingController controller3 = TextEditingController();
  final TextEditingController controller4 = TextEditingController();
  final TextEditingController controller5 = TextEditingController();
  final TextEditingController controller6 = TextEditingController();
  final TextEditingController controller7 = TextEditingController();
  final TextEditingController controller8 = TextEditingController();
  final TextEditingController controller9 = TextEditingController();
  final TextEditingController controller10 = TextEditingController();
  final TextEditingController controller11 = TextEditingController();
  final TextEditingController controller12 = TextEditingController();

  final fieldText = TextEditingController();
  bool valuefirst = false;
  bool valuesecond = false;
  bool valuethird = false;
  String ps = '';
  String DI = '';
  String DD = '';
  String PI = '';
  String PD = '';
  String pI = '';
  String pD = '';

  Future<Album>? _futureAlbum;

  String now =
      DateFormat("dd/MM/yyyy           hh:mm:a").format(DateTime.now());

  String phno = '';
  // String _mobileNumber = '';
  List<SimCard> _simCard = <SimCard>[];
  void clearText() {
    fieldText.clear();
  }

  Future<Position> _getGeoLocationPosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      await Geolocator.openLocationSettings();
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }

  Future<String> GetAddressFromLatLong(Position position) async {
    List<Placemark> placemarks =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    print(placemarks);
    Placemark place = placemarks[2];
    Address =
        '${place.street}, ${place.subLocality}, ${place.locality}, ${place.postalCode}, ${place.country}';
    // setState(() {
    return Address;
    // });
  }

  // Future<String?> uploadImage(position,category,filename, url,phoneno) async {
  //   var request = http.MultipartRequest('POST', Uri.parse(url));
  //   // request.headers.addAll({'Position': position});
  //   request.fields["position"] = position;
  //   request.fields["category"] = category;
  //   request.fields["phoneno"] = phoneno;
  //   request.files.add(await http.MultipartFile.fromPath('picture', filename));
  //   var res = await request.send();
  //   return res.reasonPhrase;
  // }
  String state = "";
  // final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          ),
        ),
        title: Text('Add Accident'),
      ),
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <
            Widget>[
          TextFormField(
            controller: _controller,
            decoration: const InputDecoration(
                labelText: 'Report Id:', fillColor: Colors.white, filled: true),
            autofocus: true,
          ),
          SizedBox(height: 10),
          TextFormField(
            controller: controller1,
            decoration: new InputDecoration(
                  border: new OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.teal)),
                  hintText: 'Accident Date & Time',
                  // helperText: 'Keep it short, this is just a demo.',
                  // labelText: 'Patient Id',
                  // prefixIcon: const Icon(
                  //   Icons.numbers,
                  //   color: Colors.green,
                  // ),
                  suffixIcon: IconButton(
                      onPressed: () async {
                        controller1.text = now;
                  // controller6.text = now;
                      },
                      icon: Icon(Icons.date_range)),
                  prefixText: ' ',
                  // suffixText: "C'",
                  suffixStyle: const TextStyle(color: Colors.green)),
          ),
          SizedBox(height: 10),
          TextFormField(
            controller: controller6,
            decoration: new InputDecoration(
                  border: new OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.teal)),
                  hintText: 'Reporting Date & Time',
                  // helperText: 'Keep it short, this is just a demo.',
                  // labelText: 'Patient Id',
                  // prefixIcon: const Icon(
                  //   Icons.numbers,
                  //   color: Colors.green,
                  // ),
                  suffixIcon: IconButton(
                      onPressed: () async {
                        // controller1.text = now;
                  controller6.text = now;
                      },
                      icon: Icon(Icons.date_range)),
                  prefixText: ' ',
                  // suffixText: "C'",
                  suffixStyle: const TextStyle(color: Colors.green)),
          ),
          // SizedBox(height: 10),
          // TextFormField(
          //   controller: controller2,
          //   decoration: const InputDecoration(
          //       labelText: 'Phone No', fillColor: Colors.white, filled: true),
          //   autofocus: true,
          // ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: controller3,
            decoration: new InputDecoration(
                  border: new OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.teal)),
                  hintText: 'Address',
                  suffixIcon: IconButton(
                      onPressed: () async {
                        Position position = await _getGeoLocationPosition();
                        location =
                            'Lat: ${position.latitude} , Long: ${position.longitude}';

                        GetAddressFromLatLong(position);
                        controller2.text = phno;

                        controller3.text = Address + ' ' + location;
                      },
                      icon: Icon(Icons.navigation)),
                  // helperText: 'Keep it short, this is just a demo.',
                  // labelText: 'Patient Id',
                  // prefixIcon: const Icon(
                  //   Icons.numbers,
                  //   color: Colors.green,
                  // ),
                  prefixText: ' ',
                  // suffixText: "C'",
                  suffixStyle: const TextStyle(color: Colors.green)),
            
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: controller4,
            decoration: const InputDecoration(
                labelText: 'No. of vehical(s)',
                fillColor: Colors.white,
                filled: true),
            autofocus: true,
          ),
          SizedBox(height: 10),
          Text(
            'Patient Situation',
            style: TextStyle(fontSize: 20.0),
          ),
          CheckboxListTile(
              // secondary: const Icon(Icons.alarm),
              title: const Text('Fatel'),
              // subtitle: Text('Ringing after 12 hours'),
              value: this.valuefirst,
              onChanged: (bool? value) {
                setState(() {
                  this.valuefirst = value!;
                  if (this.valuefirst) {
                    ps = 'Fatel';
                  }
                  // print(ps);
                });
              }),
          CheckboxListTile(
              controlAffinity: ListTileControlAffinity.trailing,
              // secondary: const Icon(Icons.alarm),
              title: const Text('Grivous Injury'),
              // subtitle: Text('Ringing after 12 hours'),
              value: this.valuesecond,
              onChanged: (bool? value) {
                setState(() {
                  this.valuesecond = value!;
                  if (this.valuesecond) {
                    ps = 'Grivous injury';
                  }
                  // print(ps);
                });
              }),
          CheckboxListTile(
              controlAffinity: ListTileControlAffinity.trailing,
              // secondary: const Icon(Icons.alarm),
              title: const Text('Serious Injury'),
              // subtitle: Text('Ringing after 12 hours'),
              value: this.valuethird,
              onChanged: (bool? value) {
                setState(() {
                  this.valuethird = value!;
                  if (this.valuethird) {
                    ps = 'serious injury';
                  }
                  // print(ps);
                });
              }),
          SizedBox(
            height: 10,
          ),
          DataTable(columns: [
            DataColumn(
                label: Text('  ',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
            DataColumn(
                label: Text('Injured',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
            DataColumn(
                label: Text('Death',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
          ], rows: [
            DataRow(cells: [
              DataCell(Text('Driver')),
              DataCell(TextFormField(
                controller: controller7,
                decoration: const InputDecoration(
                    fillColor: Colors.white, filled: true),
                autofocus: true,
              )),
              DataCell(TextFormField(
                controller: controller8,
                decoration: const InputDecoration(
                    fillColor: Colors.white, filled: true),
                autofocus: true,
              )),
            ]),
            DataRow(cells: [
              DataCell(Text('Passenger')),
              DataCell(TextFormField(
                controller: controller9,
                decoration: const InputDecoration(
                    fillColor: Colors.white, filled: true),
                autofocus: true,
              )),
              DataCell(TextFormField(
                controller: controller10,
                decoration: const InputDecoration(
                    fillColor: Colors.white, filled: true),
                autofocus: true,
              )),
            ]),
            DataRow(cells: [
              DataCell(Text('Pedestrian')),
              DataCell(TextFormField(
                controller: controller11,
                decoration: const InputDecoration(
                    fillColor: Colors.white, filled: true),
                autofocus: true,
              )),
              DataCell(TextFormField(
                controller: controller12,
                decoration: const InputDecoration(
                    fillColor: Colors.white, filled: true),
                autofocus: true,
              )),
            ]),
          ]),
          // TextFormField(
          //   controller: controller5,
          //   decoration: const InputDecoration(
          //       labelText: 'Need', fillColor: Colors.white, filled: true),
          //   autofocus: true,
          // ),
          SizedBox(
            height: 40,
          ),

          Row(
            children: [
              // RaisedButton(
              //   onPressed: clearText,
              //   color: Colors.green,
              //   child: Text(
              //     'Reset',
              //   ),
              //   textColor: Colors.white,
              // ),
              SizedBox(
                width: 40,
              ),
              // ElevatedButton(
              //   // style: style,
              //   onPressed: () async {
              //     // var file = await _picker.pickImage(source: ImageSource.camera);
              //     Position position = await _getGeoLocationPosition();
              //     location =
              //         'Lat: ${position.latitude} , Long: ${position.longitude}';
              //     // Widget fillCards() {
              //     // List<Widget> widgets = _simCard
              //     //     .map((SimCard sim) => Text(
              //     //         // 'Sim Card Number: (${sim.countryPhonePrefix}) - ${sim.number}\nCarrier Name: ${sim.carrierName}\nCountry Iso: ${sim.countryIso}\nDisplay Name: ${sim.displayName}\nSim Slot Index: ${sim.slotIndex}\n\n'))
              //     //         phno =
              //     //             'Sim Card Number: (${sim.countryPhonePrefix}) - ${sim.number}'))
              //     //     .toList();

              //     GetAddressFromLatLong(position);
              //     // controller1.text = now;
              //     controller1.text = now;
              //     controller6.text = now;

              //     // controller2.text = phno;
              //     controller3.text = Address + ' ' + location;
              //     // controller5.text=file!.path;
              //     print('report_id' + _controller.text);
              //     print('Accident d&t' + controller1.text);
              //     print('controller2.text ' + controller2.text);
              //     print('add ' + Address);
              //     print('phno ' + phno);
              //     print(controller7.text);
              //     print(controller8.text);
              //     print(controller9.text);
              //     print(controller10.text);
              //     print(controller11.text);
              //     print(controller12.text);

              //     // var res = await uploadImage(Address+' '+location,controller2.text,file?.path, widget.url,phno);
              //     // print('add '+Address);
              //     // print('phno '+phno);
              //   },
              //   child: const Text('Get'),
              // ),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                // style: style,
                onPressed: () {
                  DI = controller7.text;
                  DD = controller8.text;
                  PI = controller9.text;
                  PD = controller10.text;
                  pI = controller11.text;
                  pD = controller12.text;
                  setState(() {
                    _futureAlbum = createAlbum(
                        _controller.text,
                        controller1.text,
                        controller6.text,
                        Address + ' ' + location,
                        controller4.text,
                        ps,
                        DI,
                        DD,
                        PI,
                        PD,
                        pI,
                        pD);
                  });
                },
                child: const Text('Submit'),
              ),
              SizedBox(
                width: 10,
              ),
              // ElevatedButton(
              //   // style: style,
              //   onPressed: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(builder: (context) => const MediaForm()),
              //     );
              //   },
              //   child: const Text('Media'),
              // ),
              SizedBox(width: 10),
              ElevatedButton(
                // style: style,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AccidentMore()),
                  );
                },
                child: const Text('Add More Detail'),
              ),
            ],
          ),
        ]),
      ),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: () async {
      //     // var file = await _picker.pickImage(source: ImageSource.camera);
      //     Position position = await _getGeoLocationPosition();
      //     location = 'Lat: ${position.latitude} , Long: ${position.longitude}';
      //     // Widget fillCards() {
      //     // List<Widget> widgets = _simCard
      //     //     .map((SimCard sim) => Text(
      //     //         // 'Sim Card Number: (${sim.countryPhonePrefix}) - ${sim.number}\nCarrier Name: ${sim.carrierName}\nCountry Iso: ${sim.countryIso}\nDisplay Name: ${sim.displayName}\nSim Slot Index: ${sim.slotIndex}\n\n'))
      //     //         phno =
      //     //             'Sim Card Number: (${sim.countryPhonePrefix}) - ${sim.number}'))
      //     //     .toList();

      //     GetAddressFromLatLong(position);
      //     // controller1.text = now;
      //     controller1.text = now;
      //     controller6.text = now;
      //     DI = controller7.text;
      //     DD = controller8.text;
      //     PI = controller9.text;
      //     PD = controller10.text;
      //     pI = controller11.text;
      //     pD = controller12.text;

      //     // controller2.text = phno;
      //     controller3.text = Address + ' ' + location;
      //     // controller5.text=file!.path;
      //     print(controller1.text);
      //     print('controller2.text ' + controller2.text);
      //     print('add ' + Address);
      //     print('phno ' + phno);
      //     print(controller7.text);
      //     print(controller8.text);
      //     print(controller9.text);
      //     print(controller10.text);
      //     print(controller11.text);
      //     print(controller12.text);

      //     // var res = await uploadImage(Address+' '+location,controller2.text,file?.path, widget.url,phno);
      //     // print('add '+Address);
      //     // print('phno '+phno);
      //     // setState(() {
      //     //   state = res!;
      //     //   print(res);
      //     // });
      //   },
      //   child: const Text('click'),
      // ),
    );
  }

  FutureBuilder<Album> buildFutureBuilder() {
    return FutureBuilder<Album>(
      future: _futureAlbum,
      builder: (context, snapshot) {
        print('snapshot :=>' + '${snapshot}');
        if (snapshot.hasData) {
          return Text('Successfluly Register');
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }

        return const CircularProgressIndicator();
      },
    );
  }
}
