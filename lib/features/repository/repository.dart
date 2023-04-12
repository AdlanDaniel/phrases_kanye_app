import 'dart:convert';

import 'package:http/http.dart' as http;

abstract class Repository {
  getPhraseKanyeWest();
}

class RepositoryImpl implements Repository {
  http.Client restclient;
  RepositoryImpl({
    required this.restclient,
  });
  @override
  Future<String> getPhraseKanyeWest() async {
    final url = Uri.https('api.kanye.rest');
    try {
      final response = await restclient.get(url);
      if (response.statusCode == 200) {
        final data = response.body;

        Map<String, dynamic> map = jsonDecode(data);
        final phrase = map['quote'];
        return phrase;
      } else {
        throw RepositoryException();
      }
    } on Exception {
      throw RepositoryException();
    }
  }
}

class RepositoryException implements Exception {}
