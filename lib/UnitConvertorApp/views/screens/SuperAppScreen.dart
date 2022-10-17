import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unit_convertor_app/UnitConvertorApp/views/screens/BasicScreen.dart';
import 'package:unit_convertor_app/UnitConvertorApp/data/dymmy_data.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
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
    String finalvalue,
    int ch) {
  return data.map((e) {
    return Center(
      child: BasicScreen(
          e, function, index, ckeckList, checkInput, finalvalue, ch),
    );
  }).toList();
}

class SuperAppScreen extends StatefulWidget {
  late List<Map<String, dynamic>> data;
  int chosen = 0;
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

  num ratio = 1;
  num finalValue = 1;
  late String formatted = 1.toStringAsFixed(6);
  checkList(int n) {
    ratio = 1.0 / widget.data[tabController.index]['fields'][index][n]['value'];
    finalValue = ratio * value;
    formatted = finalValue.toString();
    widget.chosen = n;
    setState(() {});
  }

  checkinput(num n) {
    value = n;
    finalValue = ratio * n;
    formatted = finalValue.toString();
    setState(() {});
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              'Unit Converter',
              style: TextStyle(color: Colors.white70),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Divider(color: Colors.white70),
            )
          ],
        ),
        bottom: TabBar(
          tabs: createTabs(widget.data),
          controller: tabController,
        ),
        backgroundColor: Colors.black87,
      ),
      body: TabBarView(
        children: tabsBodyGenerator(widget.data, CheckCategory, index,
            checkList, checkinput, formatted, widget.chosen),
        controller: tabController,
      ),
    );
  }
}
