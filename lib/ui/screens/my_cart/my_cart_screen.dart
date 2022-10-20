import 'package:flutter/material.dart';
import 'package:plant_store_app/core/services/data/plants_data/plants_data.dart';
import 'package:plant_store_app/core/utils/consts/heading_text_font/heading_text_font.dart';
import 'package:plant_store_app/core/utils/consts/ui_colors/ui_colors.dart';
import 'package:plant_store_app/ui/custom_widgets/cart_page_bottom_sheet_rows/bottom_sheet_rows.dart';
import 'package:plant_store_app/ui/custom_widgets/cart_plant_details_tile/cart_tile.dart';
import 'package:plant_store_app/ui/custom_widgets/footer_button/large_button_only.dart';
import 'package:plant_store_app/ui/custom_widgets/small_action_button/action_button.dart';

class MyCart extends StatelessWidget {
  const MyCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [

            /// first Row having name of page, back icon, more action button

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  /// Action button class for back button

                ActionButton(iconData: Icons.arrow_back_ios_new_rounded, iconColor: kDarkGreen, containerBackgroundColor: kTextFieldBackground.withOpacity(0.3), dimension: 0.1),

                /// page name

                Text("My Cart",style: kHeaderFontStyle,),

                /// more icon

                Icon(Icons.more_vert,color: kDarkGreen,size: 30.0,),
              ],),
            ),

            /// Stack having listView builder and bottom Container

            Expanded(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 8),
                    child: Container(
                    height: height*0.5,
                    width: width,

                    /// list view having cart tile

                    child: ListView.builder(itemCount:PlantsData().plantData.length,itemBuilder: (context,index){
                      return   Column(
                        children: [
                          CartTile(plantDetails: PlantsData().plantData[index],),
                          SizedBox(height: width*0.03,),
                        ],
                      );
                    }),
                ),
                  ),

                  /// Bottom container having all details of cart

                  Positioned(
                    bottom: 0.0,
                    left: 0.0,
                    right: 0.0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: kLightSky,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0)),
                      ),
                      height: height*0.39,
                      width: width,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,

                          children: [

                            /// Row for sub Total amount

                           BottomSheetRows(heading:"SubTotal:",style: kHeaderSubTitleFontStyle.copyWith(fontWeight: FontWeight.normal), Price: '78',),
                            SizedBox(
                              height: width*0.05,
                            ),

                            /// Shipping cost row

                            BottomSheetRows(heading:"Shipping Cost:",style: kHeaderSubTitleFontStyle.copyWith(fontWeight: FontWeight.normal), Price: '10',),
                            SizedBox(
                              height: width*0.05,
                            ),

                            /// Divider

                            Divider(
                              thickness: 2.0,
                            ),
                            SizedBox(
                              height: width*0.05,
                            ),

                            /// Total amount Row

                          BottomSheetRows(heading: "Total:", Price: "88.00", style: kHeaderFontStyle),
                            SizedBox(
                              height: width*0.05,
                            ),

                            /// Bottom Button

                            OnlyButton(txt: "Place an Order"),

                          ],
                        ),
                      ),

                    ),
                  )

                ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}
