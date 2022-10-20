import 'package:flutter/material.dart';
import 'package:plant_store_app/core/utils/consts/ui_colors/ui_colors.dart';

class ActionButton extends StatelessWidget {
  ActionButton({Key? key,required this.iconData,required this.iconColor,required this.containerBackgroundColor,required this.dimension}) : super(key: key);

  double dimension;
  IconData iconData;
  Color iconColor;
  Color containerBackgroundColor;


  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;

    /// small button container decoration that usually used as an app bar action

    return  ClipOval(child: Container(
        height: width*dimension,
        width: width*dimension,
        color: containerBackgroundColor,

        /// icon for action

        child: Icon(iconData,color: iconColor,)));
  }
}
