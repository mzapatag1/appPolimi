import 'package:http/http.dart' as http;
import 'package:nutriapp/DocProfile.dart';
import 'search.dart';
import 'dart:convert';

 
class Services {
  //EL LINKKKKKK
  static const String url = 'https://jsonplaceholder.typicode.com/users';
 
  static Future<List<DocProfile>> getUsers() async {
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        List<DocProfile> list = parseUsers(response.body);
        return list;
      } else {
        throw Exception("Error");
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
 
  static List<DocProfile> parseUsers(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<DocProfile>((json) => DocProfile.fromJson(json)).toList();
  }
} 