import 'package:assign/new_screens/example.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Detailed extends StatefulWidget {
  String name;
  Detailed(this.name);
  @override
  _DetailedState createState() => _DetailedState();
}

class _DetailedState extends State<Detailed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('All Formulas')
            // .where('category', isEqualTo: widget.name.toLowerCase().toString())
            .snapshots(),
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
                      print('////////////////////////////////////////');
                      print(document['id']);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Example()));
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
