import 'package:favorite_cate_flutter/module/home/model/category_model.dart';
import 'package:flutter/material.dart';

import '../../../core/service/json_parse.dart';

class ZYHomeContent extends StatefulWidget {
  @override
  _ZYHomeContentState createState() => _ZYHomeContentState();
}

class _ZYHomeContentState extends State<ZYHomeContent> {
  List<ZYCategoryModel> _cateforys = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    JsonParse.loadLocalJsonData().then((value) {
      print("valut: $value");
      _cateforys = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView.builder(
        padding: EdgeInsets.all(20),
        itemCount: _cateforys.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 1.5),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(colors: [
                  _cateforys[index].showColor.withOpacity(0.5),
                  _cateforys[index].showColor
                ])),
            child: Text(_cateforys[index].title,
                style: Theme.of(context).textTheme.display2.copyWith(
                    fontWeight: FontWeight.bold, color: Colors.black87)),
            alignment: Alignment.center,
          );
        },
      ),
    );
  }
}
