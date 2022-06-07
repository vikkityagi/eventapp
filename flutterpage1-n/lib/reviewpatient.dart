// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'checkpatient.dart';

class ReviewPatientPage extends StatelessWidget {
  const ReviewPatientPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var pageRoutes;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Patient List '),
          actions: [
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PatientIDPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue, // Background color
                  ),
                  child: const Text(
                    'See more',
                    textScaleFactor: 1.5,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(children: <Widget>[
              Container(
                width: 500,
                height: 150,
                padding: new EdgeInsets.all(10.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: const Color.fromARGB(255, 238, 232, 232),
                  elevation: 10,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const ListTile(
                        title: Text("MLC - OP ID - 123",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            )),
                        subtitle: Text(
                          "Mr. Kantha S/O Mahesh, Age(21)",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                      RaisedButton(
                        child: const Text("View"),
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: 500,
                height: 150,
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: const Color.fromARGB(255, 238, 232, 232),
                  elevation: 10,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const ListTile(
                        title: Text("MLC - OP ID - 426",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            )),
                        subtitle: Text(
                          "Mr. Sohan S/O Rajesh, Age(28)",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                      RaisedButton(
                        child: const Text("View"),
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: 500,
                height: 150,
                padding: new EdgeInsets.all(10.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Color.fromARGB(255, 238, 232, 232),
                  elevation: 10,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const ListTile(
                        title: Text("MLC - OP ID - 453",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            )),
                        subtitle: Text(
                          "Mr. Abdul Kamil S/O Faizan Kamil, Age(35)",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                      RaisedButton(
                        child: const Text("View"),
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: 500,
                height: 150,
                padding: new EdgeInsets.all(10.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Color.fromARGB(255, 238, 232, 232),
                  elevation: 10,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const ListTile(
                        title: Text("MLC - OP ID - 56",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            )),
                        subtitle: Text(
                          "Mr. Suresh S/O Mahesh, Age(19)",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                      RaisedButton(
                        child: const Text("View"),
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: 500,
                height: 150,
                padding: new EdgeInsets.all(10.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Color.fromARGB(255, 238, 232, 232),
                  elevation: 10,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const ListTile(
                        title: Text("MLC - OP ID - 123",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            )),
                        subtitle: Text(
                          "Mr. Kantha S/O Mahesh, Age(21)",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                      RaisedButton(
                        child: const Text("View"),
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: 500,
                height: 150,
                padding: new EdgeInsets.all(10.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Color.fromARGB(255, 238, 232, 232),
                  elevation: 10,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const ListTile(
                        title: Text("MLC - OP ID - 123",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            )),
                        subtitle: Text(
                          "Mr. Kantha S/O Mahesh, Age(21)",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                      RaisedButton(
                        child: const Text("View"),
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
              ),
            ])));
  }
}
