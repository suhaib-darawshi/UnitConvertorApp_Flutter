import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unit_convertor_app/UnitConvertorApp/data/dymmy_data.dart';
import 'package:unit_convertor_app/UnitConvertorApp/views/Widgets/ScreenList.dart';

import '../Widgets/InputArea.dart';

// void main(List<String> args) {
//   runApp(MaterialApp(
//     home: FullScreen(lengthUnits),
//   ));
// }

class FullScreen extends StatelessWidget {
  late int index;
  Function checkList;
  Function checkinput;
  late int chosen = 0;
  String finalValue = 1.toStringAsFixed(6);
  late List<Map<String, dynamic>> list;
  FullScreen(
      this.list, this.index, this.checkList, this.checkinput, this.finalValue,this.chosen);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      InputArea(list, checkinput, checkList,chosen),
      Expanded(child: ScreenList(list, finalValue))
    ]);
  }
}
