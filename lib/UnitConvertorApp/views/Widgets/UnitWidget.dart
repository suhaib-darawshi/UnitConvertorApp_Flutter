import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unit_convertor_app/UnitConvertorApp/data/dymmy_data.dart';
import 'package:unit_convertor_app/UnitConvertorApp/views/Widgets/unit.dart';

class UnitWidget extends StatelessWidget {
  late Unit unit;
  late num meters;
  late double value;
  late String toprint;
  
  UnitWidget(Unit unit, String meters) {
    this.unit = unit;
    this.meters = double.parse(meters);
    this.value = double.parse(meters) * unit.value!.toDouble();
    this.toprint = double.parse(this.value.toStringAsFixed(6)).toString();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      decoration: BoxDecoration(
          // border: Border.all(color: Colors.white70),

          ),
      child: Row(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Text(
              "$toprint",
              textAlign: TextAlign.end,
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          )),
          Expanded(
              child: Text(
            '|  ' + unit.name!,
            textAlign: TextAlign.start,
            style: TextStyle(color: Colors.white, fontSize: 18),
          ))
        ],
      ),
    );
  }
}
