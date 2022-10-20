import 'package:flutter/material.dart';
import 'package:plant_store_app/core/utils/consts/ui_colors/ui_colors.dart';

class OnlyButton extends StatelessWidget {
  OnlyButton({Key? key,required this.txt}) : super(key: key);
  String txt;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          txt,
          style: TextStyle(color: Colors.white,fontSize: 20.0),
          textAlign: TextAlign.center,
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: kDarkGreen,
      ),
    );
  }
}
