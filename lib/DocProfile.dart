import 'package:flutter/material.dart';

class DocProfile{

  String name;
  String specialty; 
  int number;
  String experience;
  String email;
  
  // attribute for location!!!!!!!!!!!!!!!!
  

  //Constructor:

  DocProfile({this.name, this.specialty, this.number, this.experience,this.email,});
  
  factory DocProfile.fromJson(Map<String, dynamic> json){
    return DocProfile(
      name: json["name"] as String,
      specialty: json["specialty"] as String,
      //number: json["number"] as int,
      //experience: json["experience"] as String,
      //email: json["email"] as String,
      
    );
  }
  
  
 
}

