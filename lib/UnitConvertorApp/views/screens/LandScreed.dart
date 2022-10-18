import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../data/dymmy_data.dart';
import 'BasicScreen.dart';
import 'SuperAppScreen.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: LandScreen(JSON),
  ));
}

class LandScreen extends StatefulWidget {
  late List<Map<String, dynamic>> data;
  int chosen = 0;
  LandScreen(this.data);
  @override
  State<LandScreen> createState() => _LandScreenState();
}

class _LandScreenState extends State<LandScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  List<Widget> createTiles(List<Map<String, dynamic>> data) {
  return data
      .map((e) => Expanded(
        child: Center(
          child: ListTile(
                title: Text(e['name']),
                trailing: Icon(Icons.arrow_forward),
                    onTap: () {
                      tabController.animateTo(data.indexOf(e));
                    },
              ),
        ),
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
      appBar: AppBar(bottom:TabBar(
          tabs: createTabs(widget.data),
          controller: tabController,
        ),
        backgroundColor: Colors.black87,),
      body: Row(
        children: [
          Container(
              width: MediaQuery.of(context).size.width / 3,
              child: Expanded(
                child: Column(
                  children: createTiles(widget.data)
                ),
              )),
              Container(
              width: MediaQuery.of(context).size.width *2.0/ 3,
              child: Expanded(
                child: Column(
                  children: [ TabBarView(
        children: tabsBodyGenerator(widget.data, CheckCategory, index,
            checkList, checkinput, formatted, widget.chosen),
        controller: tabController,
      ),]
                ),
              )),
              

        ],
      ),
    );
  }
}
