import 'package:flutter/material.dart';
import 'initialize_items.dart';

class ZYMainPage extends StatefulWidget {
  static const String routeName = "/";

  @override
  _ZYMainPageState createState() => _ZYMainPageState();
}

class _ZYMainPageState extends State<ZYMainPage> {

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _index,
        children: children,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: items,
        currentIndex: _index,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: (index){
          setState(() {
            _index = index;
          });
        },
      ),
    );
  }
}
