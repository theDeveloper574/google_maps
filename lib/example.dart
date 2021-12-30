import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Example extends StatefulWidget {
  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("Detailed").snapshots(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if(!snapshot.hasData){
          return Center(child: CircularProgressIndicator());
        }
        else{
          return ListView.builder(
            itemCount:  snapshot.data.docs.length,
              itemBuilder: (ctx, int index){
            DocumentSnapshot document = snapshot.data.docs[index];
            return Card(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Text(document['name']),
            );
          });
        }
      },)
    );
  }
}
