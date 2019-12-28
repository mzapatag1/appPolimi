class DocProfile{

  String name;
  String specialty; 
  int number;
  String experience;
  String email;
  
  // attribute for location!!!!!!!!!!!!!!!!
  
  // Doc methods: we won't have any because we're creating the app for the client. 

  //Constructor:

  DocProfile({this.name, this.specialty, this.email,this.number, this.experience});
  
  factory DocProfile.fromJson(Map<String, dynamic> json){
    return DocProfile(
      name: json["name"] as String,
      specialty: json["specialty"] as String,
      email: json["email"] as String,
      //number: json["number"] as int,
      experience: json["experience"] as String
          
    );
  }
}