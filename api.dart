

import 'dart:convert';

import 'package:http/http.dart' as http;

var link = "https://nice-lime-hippo-wear.cyclic.app/api/v1/quiz";

getQuiz() async {
  var res = await http.get(Uri.parse(link));
  if (res.statusCode == 200) {
    var data = jsonDecode(res.body.toString());
    print("data is loaded");
    return data;
  }
}