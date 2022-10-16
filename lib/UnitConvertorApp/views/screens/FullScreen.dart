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

class FullScreen extends StatefulWidget {
  late List<Map<String, dynamic>> list;
  FullScreen(this.list);

  @override
  State<FullScreen> createState() => _FullScreenState();
}

class _FullScreenState extends State<FullScreen> {
  num value = 1;

  num ratio = 1;
  num finalValue = 1;
  checkList(int n) {
    ratio = 1.0 / widget.list[n]['value'];
    finalValue = ratio * value;
    setState(() {});
  }

  checkinput(num n) {
    value = n;
    finalValue = ratio * n;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      InputArea(widget.list, checkinput, checkList),
      Expanded(child: ScreenList(widget.list, finalValue))
    ]);
  }
}
