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
  num finalValue = 1;
  late List<Map<String, dynamic>> list;
  FullScreen(this.list, this.index,this.checkList,this.checkinput,this.finalValue);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      InputArea(list, checkinput, checkList),
      Expanded(child: ScreenList(list, finalValue))
    ]);
  }
}
