import 'package:flutter/material.dart';

class Search extends StatelessWidget{
  @override  Widget build(BuildContext context){
    return Scaffold(
    );
  } 
}

class Doc{
  String name;
  String specialty; 
  int number;
  String email;
  String description;
  // attribute for location!!!!!!!!!!!!!!!!
  
  // Doc methods: we won't have any because we're creating the app for the client. 

  //Constructor:
  Doc(String name, String specialty, int number, String email, String description){
    this.name = name;
    this.specialty = specialty;
    this.number = number;
    this.email = email;
    this.description = description;
  }
}

void main(List<String> args) {
  Doc docOne = Doc('Sarah', 'Vegetarian diet', 3202449324, 'sarahsveggiesg@gmail.com', 
  'Always ready to help');

  Doc docTwo = Doc('Andrew', 'Weight loss', 3805453952, 'andrewsfitness@gmail.com', 
  'Restriction is not the key to have the body that you want');

  Doc docThree = Doc('Helena', 'Athlete nutrition', 3002449332, 'helympics@gmail.com', 
  'Eat your way into the olympics');

  Doc docFour = Doc('August', 'Fast metabolism diet', 3209836274, 'augmentedcomfort@gmail.com', 
  'Always ready to help');

}