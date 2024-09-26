import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/user.dart';

class ApiService{
  final String baseUrl;

  ApiService({
    required this.baseUrl
  });

  Future<http.Response> login(User user) async{

    print(this.baseUrl);
    print(Uri.parse(this.baseUrl));
    final response = await http.post(
        Uri.parse('$baseUrl/api/v1/login'),
      headers: <String,String>{
        'Content-Type': 'application/json',
        'Accept': 'application/json'
      },
      body: jsonEncode(user.toJson())
    );
    return response;
  }
}