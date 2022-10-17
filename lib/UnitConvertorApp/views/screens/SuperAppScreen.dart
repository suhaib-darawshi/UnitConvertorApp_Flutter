import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unit_convertor_app/UnitConvertorApp/views/screens/BasicScreen.dart';
import 'package:unit_convertor_app/UnitConvertorApp/data/dymmy_data.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: SuperAppScreen(JSON),
  ));
}

List<Tab> createTabs(List<Map<String, dynamic>> data) {
  return data
      .map((e) => Tab(
            text: e['name'],
          ))
      .toList();
}
List<Widget> tabsBodyGenerator(
    List<Map<String, dynamic>> data,
    Function function,
    int index,
    Function ckeckList,
    Function checkInput,
    num finalvalue) {
  return data.map((e) {
    return Center(
      child: BasicScreen(e, function, index, ckeckList, checkInput, finalvalue),
    );
  }).toList();
}
class SuperAppScreen extends StatefulWidget {
  late List<Map<String, dynamic>> data;
  SuperAppScreen(this.data);
  @override
  State<SuperAppScreen> createState() => _SuperAppScreenState();
}



class _SuperAppScreenState extends State<SuperAppScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  initializeTabController() {
    tabController = TabController(length: widget.data.length, vsync: this);
  }

  @override
  void initState() {
    super.initState();
    initializeTabController();
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  int index = 0;

  CheckCategory(int value) {
    index = value;
    setState(() {});
  }

  num value = 1;

  num ratio = 2;
  num finalValue = 1;
  checkList(int n) {
    
    ratio = 1.0 / widget.data[tabController.index]['fields'][index][n]['value'];
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
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Unit Converter',
          style: TextStyle(color: Colors.white70),
        ),
        bottom: TabBar(
          tabs: createTabs(widget.data),
          controller: tabController,
        ),
        backgroundColor: Colors.black87,
      ),
      body: TabBarView(
        children: tabsBodyGenerator(widget.data, CheckCategory, index,
            checkList, checkinput, finalValue),
        controller: tabController,
      ),
    );
  }
}
