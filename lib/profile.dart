import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

class Profile extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
    /* appBar: AppBar(
      title: Text('My Profile'),
      backgroundColor: Colors.lightGreen[200],
      centerTitle: true,
    ), */


    body: new Stack(
      children: <Widget>[
        ClipPath(
          child: Container(
            color: Colors.grey[300].withOpacity(0.8),
          ),
          clipper: getClipper(),
        ),
        ClipPath(
          child: Container(
            color: Colors.lightGreenAccent.withOpacity(0.5),
          ),
          clipper: getGreenClipper(),
        ),
        Positioned(
          width: 350.0,
          left: 35.0,
          top: MediaQuery.of(context).size.height / 18,
          child: Column(children: <Widget>[
            Container(height:150.0, width: 150.0, 
            decoration: BoxDecoration(
              color: Colors.lime,
              image: DecorationImage(
                // PLACEHOLDER
                image: NetworkImage('https://images.unsplash.com/photo-1505503693641-1926193e8d57?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'),
                
                fit: BoxFit.cover
              ),
              borderRadius: BorderRadius.all(Radius.circular(70.0)
              ),
              boxShadow: [
                BoxShadow(blurRadius: 6.0, color: Colors.black)
              ]
            ),
            ),


            SizedBox(height: 90.0),
            Text(
              //PLACEHOLDER
              'Persona',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),
            ),

            SizedBox(height: 10.0),
            Text(
              // PLACEHOLDER
              'Cosas',
              style: TextStyle(
                fontSize: 15,
                fontStyle: FontStyle.italic
              ),
            ),
            
            
            SizedBox(height: 30.0),
            Container(
              height: 30.0,
              width: 95.0,
              child: Material(
                borderRadius: BorderRadius.circular(20),
                shadowColor: Colors.limeAccent,
                color: Colors.lightGreen[200],
                child: GestureDetector(
                  onTap: (){
                    print('Edit');
                    //PLACEHOLDER
                  },
                  child: Center(
                      child: Text('Edit my data',
                      style: TextStyle(color: Colors.black, ),
                      ),
                    ),
                    
                ),
              ),
            ),
            
            
            SizedBox(height: 200.0),
            Container(
              height: 30.0,
              width: 95.0,
              child: Material(
                borderRadius: BorderRadius.circular(20),
                shadowColor: Colors.redAccent,
                color: Colors.red[300],
                child: GestureDetector(
                  onTap: (){
                    print('log out');
                    //PLACEHOLDER
                  },
                  child: Center(
                      child: Text('Log out',
                      style: TextStyle(color: Colors.black, ),
                      ),
                    ),
                    
                ),
              ),
            )
          ],
          )
        )
      ],
    ),
    );
  } 
}

class getClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size){
    var path = new Path();

    path.lineTo(0.0, size.height/1.5);
    path.lineTo(size.width + 125, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}

class getGreenClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size){
    var path = new Path();

    path.lineTo(size.width, 0.00);
    path.lineTo(size.width, size.height/2.3);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}




class User{
  String name;
  int age;
  String gender;
  int number;
  String email;
  String description;

  // Constructor
  User (String name, int age, String gender, int number, String email, String description){
    this.name = name;
    this.age = age;
    this.gender = gender;
    this.number = number;
    this.email = email;
    this.description = description;
  }

  // Methods: 


}