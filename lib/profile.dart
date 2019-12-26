import 'package:flutter/material.dart';
import './main.dart';
import './sign_in.dart';

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
          clipper: GetClipper(),
        ),
        ClipPath(
          child: Container(
            color: Colors.lightGreenAccent.withOpacity(0.5),
          ),
          clipper: GetGreenClipper(),
        ),
        Positioned(
          width: 350.0,
          left: 35.0,
          top: MediaQuery.of(context).size.height / 18,
          child: Column(children: <Widget>[
            CircleAvatar(
                backgroundImage: NetworkImage(
                  imageUrl,
                ),
                radius: 60,
                backgroundColor: Colors.transparent,
              ),


            SizedBox(height: 90.0),
            Text(
                name,
                style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),
            ),

            SizedBox(height: 10.0),
            Text(
                email,
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
            
            
            SizedBox(height: 50.0),
            RaisedButton(
                onPressed: () {
                  signOutGoogle();
                  Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) {return LoginPage();}), ModalRoute.withName('/'));
                },
                color: Colors.deepPurple,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Sign Out',
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
            )
          ],
          )
        )
      ],
    ),
    );
  } 
}

class GetClipper extends CustomClipper<Path>{
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

class GetGreenClipper extends CustomClipper<Path>{
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