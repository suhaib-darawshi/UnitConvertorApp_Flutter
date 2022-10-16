import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unit_convertor_app/UnitConvertorApp/data/dymmy_data.dart';
import 'package:unit_convertor_app/UnitConvertorApp/views/Widgets/FieldContainer.dart';
import 'package:unit_convertor_app/UnitConvertorApp/views/screens/FullScreen.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(),
      body: BasicScreen(JSON[0]),
    ),
  ));
}

class BasicScreen extends StatefulWidget {
  late Map<String, dynamic> Category;
  late List icons;
  BasicScreen(this.Category) {
    icons = this.Category['icons'];
  }

  @override
  State<BasicScreen> createState() => _BasicScreenState();
}

class _BasicScreenState extends State<BasicScreen> {
  int index = 0;

  CheckCategory(int value) {
    index = value;
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(color: Colors.black54),
          height: 50,
          child: Row(
            children: widget.icons.map((e) {
              return FieldContainer(Field.fromMap(e),widget.icons.indexOf(e),CheckCategory);
            }).toList(),
          ),
        ),
        Expanded(child: FullScreen(widget.Category['fields'][index]))
      ],
    );
  }
}
