import 'package:flutter/material.dart';

void main() => runApp(TabBars());

class TabBars extends StatefulWidget {
  @override
  _TabBarsState createState() => _TabBarsState();
}//fin de TabBars

class _TabBarsState extends State<TabBars> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(brightness: Brightness.dark), home: Main());
  }
}//fin de class _TabBars

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}//fin de main

class _MainState extends State<Main> with SingleTickerProviderStateMixin {
  TabController controller;
   void initState() {
    super.initState();
    controller = TabController(
      length: 5,
      vsync: this,
      initialIndex: 0,
    );
  }//fin de initState

  Widget card(String text) {
    return Card(
      color: Colors.blue[300],
      child: Container(
        height: 200.0,
        width: 200.0,
        child: Center(child: Text(text)),
      ),
    );
  }//fin de cards

  Tab tab(String text, Icon icon) {
    return Tab(
      icon: icon,
      text: text,
    );
  }//fin de tab

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TabBars de Garcia"),
        centerTitle: true,
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 0.0,
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          card("Hey i am card N° 1"),
          card("Hey i am card N° 2"),
          card("Hey i am card N° 3"),
          card("Hey i am card N° 4"),
          card("Hey i am card N° 5"),
        ],
      ),
      bottomNavigationBar: TabBar(
        controller: controller,
        isScrollable: true  ,
        tabs: <Widget>[
          tab("HOME", Icon(Icons.home)),
          tab("LIGHT", Icon(Icons.lightbulb_outline)),
          tab("ATM", Icon(Icons.atm)),
          tab("SIGNAL", Icon(Icons.signal_wifi_off)),
          tab("WIFI", Icon(Icons.wifi)),
        ],
      ),
    );//fin de scaffold
  }//fin de widget

}//fin clase _MainState