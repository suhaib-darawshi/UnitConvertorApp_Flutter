import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unit_convertor_app/UnitConvertorApp/data/dymmy_data.dart';
import 'package:unit_convertor_app/UnitConvertorApp/views/Widgets/unit.dart';



class UnitWidget extends StatelessWidget {
  late Unit unit;
  late num meters;
  late double value;
  UnitWidget(Unit unit, num meters) {
    this.unit = unit;
    this.meters = meters;
    this.value = meters.toDouble() * unit.value!.toDouble();
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
          Expanded(child: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Text("$value",textAlign: TextAlign.end,style: TextStyle(color: Colors.white,fontSize: 18),),
          )),
          Expanded(child: Text('|  '+unit.name!,textAlign: TextAlign.start,style: TextStyle(color: Colors.white,fontSize: 18),))
        ],
      ),
    );
  }
}
