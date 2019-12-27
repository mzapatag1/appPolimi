import 'package:flutter/material.dart';

class DocProfile{

  String name;
  String specialty; 
  int number;
  int experience;
  String email;
  
  // attribute for location!!!!!!!!!!!!!!!!
  
  // Doc methods: we won't have any because we're creating the app for the client. 

  //Constructor:

  DocProfile({this.name, this.specialty, this.number, this.experience,this.email,});
  
  factory DocProfile.fromJson(Map<String, dynamic> json){
    return DocProfile(
      name: json["name"] as String,
      specialty: json["specialty"] as String,
      number: json["number"] as int,
      experience: json["experience"] as int,
      email: json["email"] as String,
      
    );
  }
  
  
 
}

 
  /* 
  docProfile(String name, String specialty, int number, String email, String description){
    this.name = name;
    this.specialty = specialty;
    this.experience = experience;
    this.number = number;
    this.email = email;
    this.description = description;
  } */