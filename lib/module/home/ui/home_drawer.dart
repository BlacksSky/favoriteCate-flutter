import 'package:flutter/material.dart';
import 'package:favorite_cate_flutter/base/extension/fit_size_extension.dart';

class ZYHomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300.px,
        child: Drawer(
          child: Column(
            children: [
              buildHeaderInfo(),
              buildListTitleInfo(context,Icons.restaurant,"进餐",(){
                Navigator.of(context).pop();
              }),
              buildListTitleInfo(context,Icons.settings,"过滤",(){
                Navigator.of(context).pop();
              }),
            ],
          ),
        ));
  }

  Widget buildHeaderInfo() {
    return Container(
      child: Text("开始动手",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
      alignment: Alignment(0,0.6),
      color: Colors.orange,
      height: 120,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 12),
    );
  }

  Widget buildListTitleInfo(BuildContext context,IconData icon,String title, Function handle) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title,style: Theme.of(context).textTheme.display2.copyWith(color: Colors.black),),
      onTap: handle,
    );
  }
}
