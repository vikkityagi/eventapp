// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutterpage1/report.dart';
import 'package:flutterpage1/reviewaccident.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Make people life easier, our goal'),
//       ),
//       body: Center(
//           child: Column(
//         children: <Widget>[
//           ElevatedButton(
//             child: Text('New Accident...'),
//             // color: Colors.orangeAccent,
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => const ReportStart()),
//               );
//             },
//           ),
//           SizedBox(height: 20),
//           ElevatedButton(
//             child: Text('Review Accident...'),
//             // color: Colors.orangeAccent,
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) => const ReviewAccidentPage()),
//               );
//             },
//           ),
//         ],
//       )),
//     );
//   }
// }




// import 'package:flutter/material.dart';  
  
// void main() => runApp(MyApp());  
  
/// This Widget is the main application widget.  
class HomePage extends StatelessWidget { 
  const HomePage({Key? key}) : super(key: key);
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      debugShowCheckedModeBanner: false,
      home: Scaffold(  
        appBar: AppBar(title: Text('Make people life easier, our goal')),  
        backgroundColor: Colors.white,  
        body: MyCardWidget(),  
      ),  
    );  
  }  
}  
  
/// This is the stateless widget that the main application instantiates.  
class MyCardWidget extends StatelessWidget {  
  MyCardWidget({Key? key}) : super(key: key);  
  
  @override  
  Widget build(BuildContext context) {  
    return SingleChildScrollView(  
      child:Column(children: [
        Container(  
        width: 400,  
        height: 200,  
        padding: new EdgeInsets.all(10.0),  
        child: Card(  
          shape: RoundedRectangleBorder(  
            borderRadius: BorderRadius.circular(15.0),  
          ),  
          color: Color.fromARGB(255, 247, 247, 246),  
          elevation: 10,  
          child: Column(  
            mainAxisSize: MainAxisSize.min,  
            children: <Widget>[  
              const ListTile(  
                leading: Icon(Icons.add, size: 60),  
                title: Text(  
                  'Add Accident',  
                  style: TextStyle(fontSize: 30.0)  
                ),  
                // subtitle: Text(  
                //   'Best of Sonu Nigam Music.',  
                //   style: TextStyle(fontSize: 18.0)  
                // ),  
              ),  
              ButtonBar(  
                children: <Widget>[  
                  RaisedButton(  
                    child: const Text('open'),  
                    onPressed: () {
                      Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ReportStart()),
              );
                    },  
                  ),  
                  RaisedButton(  
                    child: const Text('about'),  
                    onPressed: () {/* ... */},  
                  ),  
                ],  
              ),  
            ],  
          ),  
        ),  
      ),
      Container(  
        width: 400,  
        height: 200,  
        padding: new EdgeInsets.all(10.0),  
        child: Card(  
          shape: RoundedRectangleBorder(  
            borderRadius: BorderRadius.circular(15.0),  
          ),  
          color: Color.fromARGB(255, 247, 247, 246),  
          elevation: 10,  
          child: Column(  
            mainAxisSize: MainAxisSize.min,  
            children: <Widget>[  
              const ListTile(  
                leading: Icon(Icons.reviews, size: 60),  
                title: Text(  
                  'Review Accident',  
                  style: TextStyle(fontSize: 30.0)  
                ),  
                // subtitle: Text(  
                //   'Best of Sonu Nigam Music.',  
                //   style: TextStyle(fontSize: 18.0)  
                // ),  
              ),  
              ButtonBar(  
                children: <Widget>[  
                  RaisedButton(  
                    child: const Text('open'),  
                    onPressed: () {
                      Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ReviewAccidentPage()),
              );
                    },  
                  ),  
                  RaisedButton(  
                    child: const Text('about'),  
                    onPressed: () {/* ... */},  
                  ),  
                ],  
              ),  
            ],  
          ),  
        ),  
      )
      ],)
        
    );  
  }  
}  