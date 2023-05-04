import 'dart:io';

import 'package:http/http.dart' as http;

const String url = 'https://quizapi.io/api/v1/questions?limit=10';
const api_key = 'rGJ7w65rN5juRnkZRLHdTjIQmMOhHFzLFuDbTaFq';
const int limit = 10;
final Uri uri = Uri.parse(url)
    .replace(queryParameters: {'apiKey': api_key, 'limit': limit.toString()});
// final headers = {'Authorization': 'Bearer $api_key'};

//Make a network request

Future<http.Response> fetchQuiz() {
  return http.get(uri);
}

void main() async {
  final response = await fetchQuiz();
  print(response.body);
}
