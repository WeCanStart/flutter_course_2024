import 'dart:convert';
import 'package:http/http.dart' as http;

String link = 'https://0cbd-95-163-189-13.ngrok-free.app';
String login_link = link + '/login';
String add_link = link + '/add';
String records_link = link + '/records';
String remove_link = link + '/remove';

Future<bool> login(String username, String password) async {
  final url = Uri.parse(login_link);

  final response = await http.post(
    url,
    headers: {'Content-Type': 'application/json'},
    body: json.encode({
      'username': username,
      'password': password,
    }),
  );

  return response.statusCode == 200;
}

Future<bool> addRecord(String username, String password, String wifiName, String wifiPassword) async {
  final url = Uri.parse(add_link); // Замените на свой URL

  final response = await http.post(
    url,
    headers: {"Content-Type": "application/json"},
    body: json.encode({
      'username': username,  // Используем переданный username
      'password': password,  // Используем переданный password
      'wifi': wifiName,
      'wifipass': wifiPassword,
    }));

  return response.statusCode == 200;
}

Future<Map<String, String>> viewRecords(String username, String password) async {
  final url = Uri.parse(records_link);

  final response = await http.post(
    url,
    headers: {'Content-Type': 'application/json'},
    body: json.encode({
      'username': username,
      'password': password,
    }),
  );

  return Map<String, String>.from(json.decode(response.body));
}

Future<bool> removeRecords(String username, String password) async {
  final url = Uri.parse(remove_link);

  final response = await http.post(
    url,
    headers: {'Content-Type': 'application/json'},
    body: json.encode({
      'username': username,
      'password': password,
    }),
  );

  return response.statusCode == 200;
}