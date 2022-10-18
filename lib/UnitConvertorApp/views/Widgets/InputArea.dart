import 'dart:developer';
import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unit_convertor_app/UnitConvertorApp/data/dymmy_data.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// void main(List<String> args) {
//   runApp(MaterialApp(
//     home: Scaffold(appBar: AppBar(), body: InputArea(lengthUnits)),
//   ));
// }

List<PopupMenuItem> itemsList(List<Map<String, dynamic>> list) {
  return list.map((e) => menuItem(e, list.indexOf(e))).toList();
}

PopupMenuItem menuItem(Map<String, dynamic> map, int index) {
  return PopupMenuItem(child: ListTile(title: Text(map['name'])), value: index);
}

class InputArea extends StatelessWidget {
  late List<Map<String, dynamic>> list;
  Function function;
  Function function2;
  String? input;
  int index = 0;
  InputArea(this.list, this.function, this.function2, this.index) {
    if (index >= list.length) {
      index = list.length - 1;
    }
    
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      decoration: BoxDecoration(color: Colors.black87),
      child: Row(
        children: [
          Expanded(
              child: Container(
            decoration:
                BoxDecoration(border: Border.all(color: Colors.white70)),
            child: TextField(
              textAlign: TextAlign.center,
              onChanged: (value) {
                input = value;
                // log(value);
                function(double.parse(value));
              },
              keyboardType: TextInputType.number,
              style: TextStyle(color: Colors.white70),
              autofocus: true,
            ),
          )),
          Expanded(
              child: Container(
            decoration:
                BoxDecoration(border: Border.all(color: Colors.white70)),
            child: PopupMenuButton(
                icon: Text(
                  list[index]['name'],
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                onSelected: (value) {
                  function2(value);
                },
                itemBuilder: (BuildContext context) => itemsList(list)),
          ))
        ],
      ),
    );
  }
}
