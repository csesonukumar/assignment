import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/user.dart';

class ApiService {
  static const String _baseUrl = "https://jsonplaceholder.typicode.com";

  static Future<List<User>> fetchUsers() async {
    // final response = await http.get(Uri.parse("$_baseUrl/users"));
    final response = await http.get(
      Uri.parse("https://jsonplaceholder.typicode.com/users"),
      headers: {"Accept": "application/json"},
    );
    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return data.map((json) => User.fromJson(json)).toList();
    } else {
      throw Exception("Failed to fetch users");
    }
  }
}