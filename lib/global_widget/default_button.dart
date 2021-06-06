import 'package:flutter/material.dart';

class ZYDefaultButton extends StatelessWidget {
  final Widget icon;
  final Widget titleWidget;
  final String titleString;

  ZYDefaultButton(this.icon,{this.titleWidget,this.titleString}):assert(titleString != null || titleWidget != null);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon,
        SizedBox(width: 4,),
        buildTitleWidget(context)
      ],
    );
  }

  Widget buildTitleWidget(BuildContext context){
    if (titleWidget != null){
      return titleWidget;
    }else{
      return Text(titleString,style: Theme.of(context).textTheme.body1.copyWith(color: Colors.black87));
    }
  }
}

