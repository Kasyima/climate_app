import 'package:http/http.dart' as http;
import 'dart:convert';


class NetworkHelper{

  NetworkHelper(this.url);

  final String url;

Future getData() async{
  http.Response response = await http.get(
    Uri.parse(url));
    if (response.statusCode == 200){
    //final items = Map<String,dynamic>.from(jsonDecode(response.body));
    String data = response.body;
    var decodedData = jsonDecode(data);
    return decodedData;


}else{
      print(response.statusCode);
    }
}
}