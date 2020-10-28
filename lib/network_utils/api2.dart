import 'dart:convert';
import 'package:http/http.dart' as http;
import '../constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Network {
  final String _url = 'https://delivery-benny.herokuapp.com/api-firebase';
  //if you are using android studio emulator, change localhost to 10.0.2.2
  var token;

  _getToken() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    token = jsonDecode(localStorage.getString('token'))['token'];
  }

  authData(apiUrl) async {
    var fullUrl = _url + apiUrl;
    return await http.post(fullUrl,
        headers: <String, String>{
          "Content-Type": "application/x-www-form-urlencoded",
        },
        body: jsonEncode(<String, String>{
          'accesskey': kAccessKey,
        }));
  }

  getData(apiUrl, data) async {
    var fullUrl = _url + apiUrl;
    print(fullUrl);
    await _getToken();
    return await http.post(fullUrl,
        body: jsonEncode(data), headers: _setHeaders());
  }

  _setHeaders() => {
        "Content-Type": "application/json; charset=utf-8",
        'Accept': 'application/json',
        'Authorization': 'Bearer $token'
      };
}
