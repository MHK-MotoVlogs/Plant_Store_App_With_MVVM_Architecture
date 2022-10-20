import 'package:flutter/material.dart';
import 'package:plant_store_app/core/utils/consts/heading_text_font/heading_text_font.dart';
import 'package:plant_store_app/ui/custom_widgets/small_action_button/action_button.dart';

import '../../../core/utils/consts/ui_colors/ui_colors.dart';

class PlantFeatures extends StatelessWidget {
  PlantFeatures({Key? key,required this.feature,required this.featureInfo,required this.iconData}) : super(key: key);

  /// parameters to be used in class

  String feature;
  String featureInfo;
  IconData iconData;
  @override
  Widget build(BuildContext context) {

    /// main container

    return  Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          /// actionButton for icon

          ActionButton(iconData: iconData, iconColor: Colors.white, containerBackgroundColor: kDarkGreen, dimension: 0.1),
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              /// Feature title

              Text(feature,style: kHeaderSubTitleFontStyle,),

              /// feature data

              Text(featureInfo,style: TextStyle(color: kDarkGreen),),
            ],
          )
        ],
      ),
    );
  }
}
