import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);

  final url;
  Future getData() async {
    //print('1');
    //print(url);
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      //print('response.statusCode');
      print(response.statusCode);
      //print(url);
    }
  }
}
