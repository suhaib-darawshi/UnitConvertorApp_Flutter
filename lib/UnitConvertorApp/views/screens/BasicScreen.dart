import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unit_convertor_app/UnitConvertorApp/data/dymmy_data.dart';
import 'package:unit_convertor_app/UnitConvertorApp/views/Widgets/FieldContainer.dart';
import 'package:unit_convertor_app/UnitConvertorApp/views/screens/FullScreen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// void main(List<String> args) {
//   runApp(MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(),
//       body: BasicScreen(JSON[0]),
//     ),
//   ));
// }

class BasicScreen extends StatelessWidget {
  late int chosen = 0;
  late int index;
  late Function function;
  Function checkList;
  Function checkInput;
  late Map<String, dynamic> Category;
  late String finalValue;
  late List icons;
  BasicScreen(this.Category, this.function, this.index, this.checkList,
      this.checkInput, this.finalValue,this.chosen) {
    icons = this.Category['icons'];
  }

  @override
  Widget build(BuildContext context) {
    
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(color: Colors.black54),
          height: 50.h,
          child: Row(
            children: icons.map((e) {
              return FieldContainer(
                  Field.fromMap(e), icons.indexOf(e), function);
            }).toList(),
          ),
        ),
        Expanded(
            child: FullScreen(Category['fields'][index], index, checkList,
                checkInput, finalValue,this.chosen))
      ],
    );
  }
}
