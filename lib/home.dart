import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

class Home extends StatelessWidget{
  @override  Widget build(BuildContext context){
    return Scaffold(
    appBar: AppBar(
      title: Text('Hello user'),
      backgroundColor: Colors.lightGreen[200],
      centerTitle: true,
    ),
    body: 
    

    Center(
      child: Image(
        image: NetworkImage('https://images.unsplash.com/photo-1488459716781-31db52582fe9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80'),
        ),
        ),     
    );
  } 
}


/* Text( //This text should change over time. Depends on whether the user is signed 
        'Vuenas', // or not.
          style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          letterSpacing: 2.00,
          color: Colors.black,
          ),
        ), */