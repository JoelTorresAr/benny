import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
import '../constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Network {
  final String _url = 'https://delivery-benny.herokuapp.com/api-firebase/';
  //if you are using android studio emulator, change localhost to 10.0.2.2
  var token;
  Dio dio = new Dio();

  _getToken() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    token = jsonDecode(localStorage.getString('token'));
  }

  authData(apiUrl) async {
    var fullUrl = _url + apiUrl;
    return await dio.post(fullUrl,
        options: Options(contentType: Headers.formUrlEncodedContentType),
        data: {'accesskey': kAccessKey});
  }

  getData(apiUrl, data) async {
    var fullUrl = _url + apiUrl;
    await _getToken();
    return await dio.post(fullUrl,
        data: data,
        options: Options(
            contentType: Headers.formUrlEncodedContentType,
            headers: {HttpHeaders.authorizationHeader: 'Bearer $token'}));
  }

  _setHeaders() => {
        "Content-Type": "application/json; charset=utf-8",
        'Accept': 'application/json',
        'Authorization': 'Bearer $token'
      };
}
