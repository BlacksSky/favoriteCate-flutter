import 'package:flutter/material.dart';

class ZYHomeAppBar extends AppBar {
  ZYHomeAppBar(BuildContext context) : super(
          title: Text("美食广场"),
          leading: IconButton(
            icon: Icon(Icons.build),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        );
}
