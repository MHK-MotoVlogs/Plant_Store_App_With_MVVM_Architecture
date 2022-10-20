import 'package:flutter/material.dart';
import 'package:plant_store_app/core/models/selling_plant_details_model/plant_details_model.dart';
import 'package:plant_store_app/core/utils/consts/heading_text_font/heading_text_font.dart';
import 'package:plant_store_app/core/utils/consts/ui_colors/ui_colors.dart';
import 'package:plant_store_app/ui/custom_widgets/reusable_increaser_decreaser_button/increaser_decreaser_button.dart';

class CartTile extends StatelessWidget {
  CartTile({Key? key,required this.plantDetails}) : super(key: key);
  PlantDetails plantDetails;
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        color: kTextFieldBackground.withOpacity(0.15),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [

            /// Image of plant

            Container(
              decoration: BoxDecoration(
                color: kLightSky.withOpacity(0.4),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Image(
                  height: width*0.3,
                  width: width*0.3,
                  image: NetworkImage(plantDetails.imageUrl)),
            ),

            /// column containing name, description and number of items

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                /// name of plant

                Text(plantDetails.name,style: kHeaderSubTitleFontStyle.copyWith(fontWeight: FontWeight.bold),),
                SizedBox(height: width*0.02,),

                /// Description of plant

                Text(plantDetails.description,style: kHeaderSubTitleFontStyle,),
                SizedBox(height: width*0.02,),

                /// decreaser increaser of count

                Row(
                  children: [

                    /// increase button

                    IncreaserDecreaserButton(iconData:Icons.remove,onTap: (){}),
                    SizedBox(width: width*0.01,),

                    /// count number

                    Text("2",style: kHeaderSubTitleFontStyle.copyWith(fontWeight: FontWeight.normal),),
                    SizedBox(width: width*0.01,),


                    /// decrease button

                    IncreaserDecreaserButton(iconData:Icons.add,onTap: (){}),
                  ],
                ),

              ],
            ),

            /// price and more button

            Column(
              children: [

                /// more icon

                Icon(Icons.more_vert,color: kDarkGreen,size: 35.0,),
                SizedBox(width: width*0.01,),

                //just for spacing purpose used text
                Text(""),
                SizedBox(width: width*0.01,),

                /// Price

                Text("\$${plantDetails.price}.00",style: kHeaderSubTitleFontStyle.copyWith(color: kLightGreen,fontWeight: FontWeight.normal),),
              ],
            )

          ],
        ),
      ),
    );
  }
}
