import 'dart:convert';

import 'package:http/http.dart';
import 'package:http/http.dart' as http;

class ApiService {

  static final ApiService apiService = ApiService();

  Future<Map?> getData() async {
    String apiData = 'https://dummyjson.com/recipes';
    Uri uri = Uri.parse(apiData);
    Response response = await http.get(uri);
    if (response.statusCode == 200) {
      Map dataList = jsonDecode(response.body);
      return dataList;
    }
    return null;
  }
}