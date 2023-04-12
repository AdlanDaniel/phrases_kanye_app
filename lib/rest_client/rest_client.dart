import 'package:http/http.dart' as http;

class RestClient {
  
  static Future get(Uri url) async {
    final response = await http.get(url);
    return response;
  }

  // Future  get(Uri url) async {
  //   return await http.get(url);
}
