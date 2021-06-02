
import 'package:flutter/material.dart';
import '../home/ui/home.dart';
import '../favor/ui/favor.dart';
import 'bottom_bar_item.dart';

final List<Widget> children = [
  ZYHomePage(),
  ZYFavorPage(),
];

final List<BottomNavigationBarItem> items = [
  BottomNavigationBarItem(
    title: Text("首页"),
    icon: Icon(Icons.home)
  ),BottomNavigationBarItem(
      title: Text("收藏"),
      icon: Icon(Icons.star)
  ),
];

