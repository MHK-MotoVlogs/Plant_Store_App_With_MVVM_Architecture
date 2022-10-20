import 'package:flutter/material.dart';
import 'package:plant_store_app/core/utils/consts/heading_text_font/heading_text_font.dart';
import 'package:plant_store_app/ui/custom_widgets/small_action_button/action_button.dart';

import '../../../core/utils/consts/ui_colors/ui_colors.dart';

class PlantFeatures extends StatelessWidget {
  PlantFeatures({Key? key,required this.feature,required this.featureInfo,required this.iconData}) : super(key: key);
  String feature;
  String featureInfo;
  IconData iconData;
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ActionButton(iconData: iconData, iconColor: Colors.white, containerBackgroundColor: kDarkGreen, dimension: 0.1),
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(feature,style: kHeaderSubTitleFontStyle,),
              Text(featureInfo,style: TextStyle(color: kDarkGreen),),
            ],
          )
        ],
      ),
    );
  }
}
