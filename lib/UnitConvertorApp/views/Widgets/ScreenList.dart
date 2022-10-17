import 'package:flutter/material.dart';
import 'package:unit_convertor_app/UnitConvertorApp/data/dymmy_data.dart';
import 'package:unit_convertor_app/UnitConvertorApp/views/Widgets/unit.dart';

import 'UnitWidget.dart';

// void main(List<String> args) {
//   runApp(MaterialApp(
//     home: Scaffold(appBar: AppBar(), body: ScreenList(lengthUnits, 5),),
//   ));
// }
class ScreenList extends StatelessWidget {
  late List<Map<String, dynamic>> units;
  
  late String meters;
  ScreenList(this.units, this.meters);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.black87),
      child: ListView.separated(
        itemCount: units.length,
        itemBuilder: (context, index) =>
            UnitWidget(Unit.fromMap(units[index]), meters),
        separatorBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Divider(color: Colors.white),
        ),
      ),
    );
  }
}
