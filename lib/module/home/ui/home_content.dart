import 'package:favorite_cate_flutter/module/home/model/category_model.dart';
import 'package:favorite_cate_flutter/module/home/ui/home_content_item.dart';
import 'package:flutter/material.dart';

import '../../../core/service/json_parse.dart';
import '../../../core/service/json_parse.dart';

class ZYHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: FutureBuilder<List<ZYCategoryModel>>(
            future: JsonParse.loadLocalJsonData(),
            builder: (content, snapshot) {
              if (!snapshot.hasData)
                return Center(child: CircularProgressIndicator());
              if (snapshot.error != null) return Center(child: Text("加载失败，请稍后再试"));

              return GridView.builder(
                padding: EdgeInsets.all(20),
                itemCount: snapshot.data.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    childAspectRatio: 1.5),
                itemBuilder: (context, index) {
                  return ZYHomeContentItem(snapshot.data[index]);
                },
              );
            }));
  }
}
