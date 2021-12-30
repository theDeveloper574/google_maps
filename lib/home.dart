import 'package:assign/detailed.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('Formula').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          } else {
            return ListView.builder(
                itemCount: snapshot.data.docs.length,
                itemBuilder: (context, index) {
                  DocumentSnapshot document = snapshot.data.docs[index];
                  return InkWell(
                    onTap: () {
                      print(document['name']);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Detailed(document['id'])));
                    },
                    child: Card(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        child: Text(document['name'])),
                  );
                });
          }
        },
      ),
    );
  }
}
