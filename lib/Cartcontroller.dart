import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:trainig5/Mydata.dart';
import 'package:trainig5/main.dart';

class Cartcontroller extends ChangeNotifier {
  List<MyData> data = [];
  addtoCart(MyData myData) {
    data.add(myData);
    final jsondata = data.map((e) => e.toJson()).toList();
    pref.setString('id', jsonEncode(jsondata));
    print(pref.getString('id'));
    notifyListeners();
  }
  // getData() async {
  //   String url = '';
  //   var respons = await http.get(url as Uri);
  //   var responsebody = jsonDecode(respons.body);
  //   for (var responsejson in responsebody) {
  //     data.add(Users.fromJson(responsejson));
  //   }
  // }

  List<MyData> get cart {
    var keyjson = pref.getString('id');
    List<Map<String, dynamic>> jsonList =
        (jsonDecode(keyjson!)).cast<Map<String, dynamic>>();
    List<MyData> data =
        jsonList.map((i) => MyData.fromJson(i)).toList().cast<MyData>();
    return data;
  }

  
}
