import 'package:flutter/material.dart';

class ZYHomeAppBar extends AppBar {
  ZYHomeAppBar() : super(
          title: Text("美食广场"),
          leading: Builder(
            builder: (ctx) {
              return IconButton(
                icon: Icon(Icons.build),
                onPressed: () {
                  Scaffold.of(ctx).openDrawer();
                },
              );
            },
          ),
        );
}
