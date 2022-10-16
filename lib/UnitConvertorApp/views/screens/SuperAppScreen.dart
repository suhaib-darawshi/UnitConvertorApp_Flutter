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

class SuperAppScreen extends StatefulWidget {
  late List<Map<String, dynamic>> data;
  SuperAppScreen(this.data);
  @override
  State<SuperAppScreen> createState() => _SuperAppScreenState();
}

List<Widget> tabsBodyGenerator(List<Map<String, dynamic>> data) {
  return data.map((e) {
    return Center(
      child: BasicScreen(e),
    );
  }).toList();
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unit Converter',style: TextStyle(color: Colors.white70),),
        bottom: TabBar(
          tabs: createTabs(widget.data),
          controller: tabController,
        ),backgroundColor: Colors.black87,
      ),
      body: TabBarView(children: tabsBodyGenerator(widget.data),controller: tabController,),
    );
  }
}
