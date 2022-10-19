import 'package:flutter/material.dart';
import 'package:plant_store_app/core/utils/consts/ui_colors/ui_colors.dart';

class ChipsButtons extends StatelessWidget {
   ChipsButtons({Key? key,required this.text,required this.onpress,required this.checkForClick}) : super(key: key);
    String text;
    VoidCallback onpress;
    bool checkForClick;
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onpress,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: checkForClick ? kLightSky.withOpacity(0.9) : null,
        ),

        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(text),
        ),
      ),
    );
  }
}
