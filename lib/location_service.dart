//
//
// import 'package:http/http.dart' as http;
// import 'dart:convert' as convert;
//
// class LocationService{
//   String key = 'AIzaSyByMoirwbZK7gWsbptPgDLdakmxoPsEZrc';
//
//   Future<String>getPlaceId(String input)async{
//     final String url = 'https://maps.googleapis.com/maps/api/place/findplacefromtext/json?input=$input&inputtype=textquery&key=$key';
//
//     var response = await http.get(Uri.parse(url));
//     var json = convert.jsonDecode(response.body);
//
//     var placeId = json['candidates'][0]['place_id'];
//     print(placeId);
//     return placeId;
//   }
//
//   // Future<Map<String, dynamic>>getPlace(String input)async{}
//
//
// }