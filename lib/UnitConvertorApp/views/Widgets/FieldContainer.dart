import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// void main(List<String> args) {
//   runApp(MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(),
//       body: FieldContainer(
//           Field.fromMap({'name': 'asd', 'icon': Icon(Icons.abc)}), 0,),
//     ),
//   ));
// }

class Field {
  late Icon icon;
  late String name;
  Field.fromMap(Map<String, dynamic> map) {
    this.name = map['name'];
    this.icon = map['icon'];
  }
}

class FieldContainer extends StatelessWidget {
  int number;
  late Field field;
  Function function;
  FieldContainer(this.field, this.number, this.function);
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: InkWell(
      onTap: () {
        function(number);
      },
      child: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.white70),color: Colors.black87,),
        
        child: Column(
          children: [
            Center(child: field.icon),
            Center(
              child: Text(field.name,style: TextStyle(color: Colors.white70),),
            )
          ],
        ),
      ),
    ));
  }
}
