import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'DocProfile.dart';
//import 'dart:convert';
import 'dart:async';
import 'Services.dart';
//import 'package:http/http.dart' as http;


class Search extends StatefulWidget{
  Search() : super();

  @override
  SearchState createState() => SearchState();
}

class SearchState extends State<Search>{
  List <DocProfile> users = List();
  List <DocProfile> filteredUsers = List();

  @override
  void initState() {
    super.initState();
    Services.getUsers().then((usersFromServer){
      setState(() {
        users = usersFromServer;
        filteredUsers = users;
      });
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: <Widget>[
          TextField (
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(15.0),
              hintText: 'Enter name or specialty',
            ),
            onChanged: (string){
              setState(() {
                filteredUsers = users.where((u)=>(
                  u.name.toLowerCase().contains(string.toLowerCase()) ||
                  u.email.toLowerCase().contains(string.toLowerCase())))
                  .toList();
              });
            },
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(10.0),
              itemCount: filteredUsers.length,
              itemBuilder: (BuildContext context, int index){

                return Card(
                  child: 
                  FlatButton(
                    onPressed: (){
                      print('funciona');
                      },
                    
                    child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          filteredUsers[index].name,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 5.00,),

                        Text(
                          filteredUsers[index].email,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 5.00,),
                      ],

                    ),
                  ),



                  
                  )
                  


                );
              },
            ),
          ),
        ],
      ),
    );
  }
}









































/* 
class Search extends StatefulWidget {
  _ListViewSearchState createState() => _ListViewSearchState();
}

class _ListViewSearchState extends State<Search> {
  TextEditingController _textController = TextEditingController();

  final List<String> _listViewData = [
    "Sarah Crain",
    "Theodora Pierce",
    "Andrew Altman",
    "Helena Garrone",
    "Owen Hunt",
    "Francesco Rati",
    "Massimo Buonassisi",
    "Claire Wineland",
    "Jennifer Taylor",
    "Danny Lopez",
    "Harry Hall",
    "Mark Montgomery",
    "Emily Marin", 
  ];

  List<String> _newData = [];

  _onChanged(String value) {
    setState(() {
      _newData = _listViewData
          .where((string) => string.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(
        title: Text('ListView Filter/Search Example'),
      ), */
      body: Column(
        children: <Widget>[
          SizedBox(height: 15.0),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: 
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                hintText: 'Find your nutritionist!',
              ),
              onChanged: _onChanged,
            ),


          ),
          SizedBox(height: 20.0),
          _newData != null && _newData.length != 0
              ? Expanded(
                  child: 
                  
                  ListView(
                    
                    padding: EdgeInsets.all(10.0),
                    children: 
                    
                      _newData.map((data) {
                      return ListTile(title: Text(data));
                    }).toList(),
                  
                    

                  ),


                )
              : SizedBox(),
        ],
      ),
    );
  }
}
 */

/* 

    "Sarah Crain",
    "Theodora Pierce",
    "Andrew Altman",
    "Helena Garrone",
    "Owen Hunt",
    "Francesco Rati",
    "Massimo Buonassisi",
    "Claire Wineland",
    "Jennifer Taylor",
    "Danny Lopez",
    "Harry Hall",
    "Mark Montgomery",
    "Emily Marin", 



class Search extends StatelessWidget{

  @override  Widget build(BuildContext context){
    return Scaffold(
     appBar: AppBar(
      title: Text('Find your nutritionist!'),
      backgroundColor: Colors.lightGreen[200],
      centerTitle: true,
    ), 
    body: ListView(
  padding: const EdgeInsets.all(8),
  children: <Widget>[
    Container(
      height: 60,
      color: Colors.lightGreen[200],
      child: Center(
        child: 
          FlatButton(
            onPressed: (){
            print('funciona');
            },
            child: Text('Sarah Crain'),            
        ),
        ),

    ),

    Container(
      height: 60,
      color: Colors.lime[200],
      child: Center(
        child: 
          FlatButton(
            onPressed: (){
            print('funciona');
            },
            child: Text('Theodora Pierce'),            
        ),
        ),
    ),

    Container(
      height: 60,
      color: Colors.lightGreen[200],
      child: Center(
        child: 
          FlatButton(
            onPressed: (){
            print('funciona');
            },
            child: Text('Andrew Altman'),            
        ),
        ),
    ),

    Container(
      height: 60,
      color: Colors.lime[200],
      child: Center(
        child: 
          FlatButton(
            onPressed: (){
            print('funciona');
            },
            child: Text('Helena Garrone'),            
        ),
        ),
    ),

    Container(
      height: 60,
      color: Colors.lightGreen[200],
      child: Center(
        child: 
          FlatButton(
            onPressed: (){
            print('funciona');
            },
            child: Text('Greta Iglesias'),            
        ),
        ),
    ),

    Container(
      height: 60,
      color: Colors.lime[200],
      child: Center(
        child: 
          FlatButton(
            onPressed: (){
            print('funciona');
            },
            child: Text('Owen Hunt'),            
        ),
        ),
    ),

    Container(
      height: 60,
      color: Colors.lightGreen[200],
      child: Center(
        child: 
          FlatButton(
            onPressed: (){
            print('funciona');
            },
            child: Text('Camden Scott'),            
        ),
        ),
    ),

    Container(
      height: 60,
      color: Colors.lime[200],
      child: Center(
        child: 
          FlatButton(
            onPressed: (){
            print('funciona');
            },
            child: Text('Amy Zall'),            
        ),
        ),
    ),

    Container(
      height: 60,
      color: Colors.lightGreen[200],
      child: Center(
        child: 
          FlatButton(
            onPressed: (){
            print('funciona');
            },
            child: Text('Renata Landino'),            
        ),
        ),
    ),

    Container(
      height: 60,
      color: Colors.lime[200],
      child: Center(
        child: 
          FlatButton(
            onPressed: (){
            print('funciona');
            },
            child: Text('Francesco Rati'),            
        ),
        ),
    ),

    Container(
      height: 60,
      color: Colors.lightGreen[200],
      child: Center(
        child: 
          FlatButton(
            onPressed: (){
            print('funciona');
            },
            child: Text('Mark Montgomery'),            
        ),
        ),
    ),

    Container(
      height: 60,
      color: Colors.lime[200],
      child: Center(
        child: 
          FlatButton(
            onPressed: (){
            print('funciona');
            },
            child: Text('Harry Hall'),            
        ),
        ),
    ),
  ],
),

    );
  } 
}
 */




/* 
class Doc{
  String name;
  String specialty; 
  int number;
  int experience;
  String email;
  String description;
  // attribute for location!!!!!!!!!!!!!!!!
  
  // Doc methods: we won't have any because we're creating the app for the client. 

  //Constructor:
  Doc(String name, String specialty, int number, String email, String description){
    this.name = name;
    this.specialty = specialty;
    this.experience = experience;
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

} */


/* 
class UserFilter extends StatefulWidget{
  UserFilter(): super();

  final String title="Doc list Demooo";

  @override
  UserFilterState createState() => UserFilterState();
}

class UserFilterState extends State <UserFilter>{
  List <Doc> docs = List(); 

  @override
  void initState() {
    super.initState();
    Services.getUsers().then((docsFromServer){
      setState(() {
        docs = docsFromServer;
      });
    });

  }
  @override
   Widget build(BuildContext context){
     return Scaffold(
       appBar: AppBar(
         title: Text(widget.title),
       ),
       body: Container(),
     );
   }
} */


/* 
class Doc {
  String name;
  String specialty; 
  int number;
  int experience;
  String email;
  String description;
 
  Doc({this.name,
    this.specialty,
    this.experience,
    this.number,
    this.email,
    this.description});
 
  factory Doc.fromJson(Map<String, dynamic> json) {
    return Doc(
      name: json["name"] as String,
      specialty: json["specialty"] as String,
      experience: json["experience"] as int,
      email: json["email"] as String,
      number: json["number"] as int,
      description: json["description"] as String,

    );
  }
} */