import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List> fetchWpPosts() async{
final response = await http.get('https://word.tkco.in/wp-json/wc/v3/products?consumer_key=ck_94114a31e4576e61a9292f961489e7701029753e&consumer_secret=cs_dd4dc6e7945d8dcd14d888bc1d0ea0806b116dfb');
var convertDatatoJson = jsonDecode(response.body);
return convertDatatoJson;
}