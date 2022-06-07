// // ignore_for_file: deprecated_member_use

// // import 'package:eventform/signup.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// // import 'homepage.dart';
// import 'accidentstart.dart';
// import 'signup.dart';

// class AccidentIDPage extends StatefulWidget {
//   const AccidentIDPage({Key? key}) : super(key: key);

//   @override
//   _SigninState createState() => _SigninState();
// }

// class _SigninState extends State<AccidentIDPage> {
//   // For CircularProgressIndicator.
//   bool visible = false;

//   // Getting value from TextField widget.
//   final reportController = TextEditingController();

//   // Future userLogin() async {
//   //   // Showing CircularProgressIndicator.
//   //   setState(() {
//   //     visible = true;
//   //   });

//   //   // Getting value from Controller
//   //   String email = emailController.text;
//   //   String phoneno = phoneController.text;
//   //   String password = passwordController.text;

//   //   // SERVER LOGIN API URL
//   //   // var url = 'http://192.236.160.238/api/auth/login';

//   //   // Store all data with Param Name.
//   //   // var data = ;

//   //   // Starting Web API Call.
//   //   final response = await http.post(
//   //     Uri.parse('http://192.168.68.103:2400/api/auth/login'),
//   //     headers: <String, String>{
//   //       'Content-Type': 'application/json; charset=UTF-8',
//   //     },
//   //     body: json.encode(<String, String>{
//   //       'email': email,
//   //       'phoneno': phoneno,
//   //       'password': password
//   //     }),
//   //   );
//   //   print({'email': email, 'phoneno': phoneno, 'password': password});

//   //   // Getting Server response into variable.
//   //   var message = jsonDecode(response.body);
//   //   print(message);

//   //   // If the Response Message is Matched.
//   //   if (message['success']) {
//   //     // Hiding the CircularProgressIndicator.
//   //     setState(() {
//   //       visible = false;
//   //     });

//   //     // Navigate to Home & Sending Email to Next Screen.
//   //     Navigator.push(
//   //       context,
//   //       MaterialPageRoute(builder: (context) => HomePage()),
//   //     );
//   //   } else {
//   //     // If Email or Password did not Matched.
//   //     // Hiding the CircularProgressIndicator.
//   //     setState(() {
//   //       visible = true;
//   //     });

//   //     // Showing Alert Dialog with Response JSON Message.
//   //     // showDialog(
//   //     //   context: context,
//   //     //   builder: (BuildContext context) {
//   //     //     return AlertDialog(
//   //     //       title: new Text(message),
//   //     //       actions: <Widget>[
//   //     //         FlatButton(
//   //     //           child: new Text("OK"),
//   //     //           onPressed: () {
//   //     //             Navigator.of(context).pop();
//   //     //           },
//   //     //         ),
//   //     //       ],
//   //     //     );
//   //     //   },
//   //     // );
//   //   }
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: new IconButton(
//           icon: new Icon(Icons.arrow_back, color: Colors.white),
//           onPressed: () => Navigator.of(context).pop(),
//         ),
//         title: Text('See Report'),
//       ),
//       body: SingleChildScrollView(
//         padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Center(
//                 // child: CircleAvatar(
//                 //   // backgroundImage: AssetImage('assets/images/img1.jpg'),
//                 //   radius: 60.0,
//                 // ),
//                 ),
//             SizedBox(height: 10.0),
//             TextFormField(
//               controller: reportController,
//               decoration: InputDecoration(labelText: 'Report Id'),
//             ),

//             SizedBox(height: 20.0),
//             FlatButton(
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(18.0),
//                   side: BorderSide(color: Colors.green)),
//               onPressed: () {},
//               child: Text('Submit'),
//               color: Colors.green,
//               minWidth: 300.0,
//             ),
//             // SizedBox(height: 20.0),
//             // Row(
//             //   mainAxisAlignment: MainAxisAlignment.center,
//             //   children: [
//             //     Text("Don't have an account?"),
//             //     new GestureDetector(
//             //       onTap: () {
//             //         Navigator.push(
//             //           context,
//             //           MaterialPageRoute(builder: (context) => SignupPage()),
//             //         );
//             //       },
//             //       child: new Text(
//             //         "Sign Up",
//             //         style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
//             //       ),
//             //     )
//             //   ],
//             // )
//           ],
//         ),
//         // ],
//       ),
//       // ),
//     );
//   }
// }

import 'package:flutter/material.dart';

import 'pasangerreport.dart';
import 'pedestrainreport.dart';
import 'reviewaccident.dart';
import 'seeotherreport.dart';
import 'vehiclereport.dart';

class AccidentIDPage extends StatelessWidget {
  const AccidentIDPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // Hide the debug banner
      debugShowCheckedModeBanner: false,
      title: 'Kindacode.com',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // The inital group value
  String _selectedOption = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ReviewAccidentPage()),
          ),
        ),
        // title: const Text(
        //   // 'Kindacode.com',
        // ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Please Choose any one:'),
              ListTile(
                leading: Radio<String>(
                  value: 'vehicle',
                  groupValue: _selectedOption,
                  onChanged: (value) {
                    setState(() {
                      _selectedOption = value!;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const VehicleReport()));
                    });
                  },
                ),
                title: const Text('See vehicle Report'),
              ),
              ListTile(
                leading: Radio<String>(
                  value: 'pasanger',
                  groupValue: _selectedOption,
                  onChanged: (value) {
                    setState(() {
                      _selectedOption = value!;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PasangerReport()));
                    });
                  },
                ),
                title: const Text('See pasanger Report'),
              ),
              ListTile(
                leading: Radio<String>(
                  value: 'pedestrain',
                  groupValue: _selectedOption,
                  onChanged: (value) {
                    setState(() {
                      _selectedOption = value!;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PedestrainReport()));
                    });
                  },
                ),
                title: const Text('See pedestrain Report'),
              ),
              ListTile(
                leading: Radio<String>(
                  value: 'other',
                  groupValue: _selectedOption,
                  onChanged: (value) {
                    setState(() {
                      _selectedOption = value!;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const OtherReport()));
                    });
                  },
                ),
                title: const Text('See Other Report'),
              ),
//               const SizedBox(height: 25),
//               Text(

//       switch(_selectedOption) {
// case constant_expr1: {
// // statements;
// }
// break;

// case constant_expr2: {
// //statements;
// }
// break;

// default: {
// //statements;
// }
// break;
// }

//     ),
            ],
          )),
    );
  }
}
