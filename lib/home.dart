import 'package:flutter/material.dart';

import './profile.dart' as profile;
import './search.dart' as search;
import './myAppoints.dart' as appointments;

class Tabs extends StatefulWidget{
  @override
  TabsState createState() => new TabsState();

}

class TabsState extends State<Tabs> with SingleTickerProviderStateMixin {

  TabController controller;

  @override
  void initState(){
    super.initState();
    controller = new TabController(vsync: this, length: 3);
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: Text("NutriApp",
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.50,
          ),
        ),
        backgroundColor: Colors.lightGreen[400],
        bottom: new TabBar(
          controller: controller,
          tabs: <Tab>[
            new Tab(icon: new Icon(Icons.search)),
            new Tab(icon: new Icon(Icons.calendar_today)),
            new Tab(icon: new Icon(Icons.person)),

        ]
        )
        ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new search.Search(),
          new appointments.MyAppoints(),
          new profile.Profile()
          ],
        
      )

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