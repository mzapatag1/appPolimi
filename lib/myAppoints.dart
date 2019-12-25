import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

class MyAppoints extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
    appBar: AppBar(
      title: Text('My Appointments'),
      backgroundColor: Colors.lightGreen[200],
      centerTitle: true,
    )
    );
  } 
}
