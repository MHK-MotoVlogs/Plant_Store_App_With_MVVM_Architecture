import 'package:flutter/material.dart';
import 'package:plant_store_app/core/utils/consts/heading_text_font/heading_text_font.dart';
import 'package:plant_store_app/core/utils/consts/ui_colors/ui_colors.dart';

class IncreaserDecreaserButton extends StatelessWidget {
  IncreaserDecreaserButton({Key? key,required this.iconData,required this.onTap}) : super(key: key);
  IconData iconData;
  VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return  InkWell(

      /// onTap functionality passed when called

      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: kDarkGreen),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0,vertical: 2),

          /// icon

          child: Icon(iconData,color: kDarkGreen,size: 20.0,),
        ),
      ),
    );
  }
}
