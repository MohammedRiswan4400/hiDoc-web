// import 'dart:developer';

import 'package:http/http.dart' as http;

import 'model.dart';

class NetworkHelper {
  static Future<HiDocWeb> fetchFormNetwork() async {
    const api = "http://devapi.hidoc.co:8080/HidocWebApp/api/getArticlesByUid";
    final url = Uri.parse(api);
    final response = await http.post(url);
    final json = hiDocWebFromJson(response.body);
    // return json;
    // if (response.statusCode == 200) {
    //   log(response.body);
    // }
    return json;
  }
}
