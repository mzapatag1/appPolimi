import 'dart:convert';
import 'package:http/http.dart' as http;
import 'DocProfile.dart';

class Services {
  static const String url = 'https://my-json-server.typicode.com/mzapatag1/appPolimi/Nutris';

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