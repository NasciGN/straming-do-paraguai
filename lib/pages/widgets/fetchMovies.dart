// import 'dart:convert';
//
// import 'package:http/http.dart' as http;
//
// final String url = "https://api.themoviedb.org/3/movie/550?api_key=1eea2e5c113db4b971e3bbf50ec104c80";
//
// Future main() async{
//   final json = await fetch();
//   print('')
// }
//
// Future<Map> fetch() async{
//   final String url = "https://api.themoviedb.org/3/movie/550?api_key=1eea2e5c113db4b971e3bbf50ec104c80";
//   var respose = await http.get(Uri.parse(url));
//   var json = jsonDecode(respose.body);
//   return json;
// }
