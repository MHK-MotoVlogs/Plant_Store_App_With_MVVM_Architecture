import 'package:flutter/material.dart';
import 'package:plant_store_app/core/services/data/plants_data/plants_data.dart';
import 'package:plant_store_app/core/utils/consts/heading_text_font/heading_text_font.dart';
import 'package:plant_store_app/core/utils/consts/network_images_urls/network_images_urls.dart';
import 'package:plant_store_app/core/utils/consts/ui_colors/ui_colors.dart';
import 'package:plant_store_app/ui/custom_widgets/footer_button/rounded_button.dart';
import 'package:plant_store_app/ui/custom_widgets/plant_features/plant_features.dart';
import 'package:plant_store_app/ui/custom_widgets/small_action_button/action_button.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          backgroundColor: kLightSky,
          body: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),

                ///Row having action of favorite and back icon

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ActionButton(
                        iconData: Icons.arrow_back_ios_new_outlined,
                        iconColor: kDarkGreen,
                        containerBackgroundColor: Colors.white,dimension: 0.1,),
                    ActionButton(
                        iconData: Icons.favorite_border,
                        iconColor: Colors.white,
                        containerBackgroundColor: kDarkGreen,dimension: 0.1,),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),

              /// Stack having Image and Draggable Scrollable sheet

              Expanded(
                child: Stack(children: [
                  Positioned(
                    top: 0.0,
                    left: 0.0,
                    right: 0.0,

                    /// Main image of page

                    child: Image(
                        height: height * 0.6,
                        width: width * 0.8,
                        image:
                            NetworkImage(PlantsData().plantData[0].imageUrl)),
                  ),

                  /// Draggable sheet having details of main image plant

                  DraggableScrollableSheet(
                    initialChildSize: 0.25,
                      maxChildSize: 0.55,
                      builder: (context, scrollableController) {

                      /// Main child Container of Draggable sheet

                        return Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0))
                          ),
                          child: ListView.builder(
                              controller: scrollableController,
                              itemCount: 1,
                              itemBuilder: (context, index) {

                                /// Container having all details of plant

                                return Container(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal:20.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [

                                        /// Handle of draggable sheet

                                        Divider(
                                          indent: width*0.4,
                                          endIndent: width*0.4,
                                          thickness: 3.0,
                                          color: kDarkGreen,
                                          ),

                                      /// Row containing Name, price, and quantity of plant

                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [

                                          /// Plant name and price

                                          Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(PlantsData().plantData[0].name,style: kHeaderFontStyle,),

                                            SizedBox(height: height*0.01,),

                                            Text("\$${PlantsData().plantData[0].price}.00",style: kHeaderSubTitleFontStyle.copyWith(color:kLightGreen,fontWeight: FontWeight.bold),)
                                          ],
                                        ),

                                        /// quantity of plant in text

                                        Container(decoration:BoxDecoration(color:kDarkGreen,borderRadius: BorderRadius.circular(20.0)),child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text("-  2  +",style: kHeaderFontStyle.copyWith(color: Colors.white,fontSize: 15.0),),
                                        ))
                                        ],
                                      ),
                                        SizedBox(height: height*0.02,),

                                        /// About Section

                                        Text("About",style: kHeaderSubTitleFontStyle.copyWith(fontWeight: FontWeight.bold),),
                                        SizedBox(height: height*0.02,),

                                        /// Plant About information

                                        Text(PlantsData().plantData[0].about),
                                        SizedBox(height: height*0.02,),

                                        /// Horizontal List View Builder containing features of plant

                                        Container(
                                          height: width*0.1,
                                          width: width,

                                          ///list of Icons features and features information

                                       child:  ListView(
                                         scrollDirection: Axis.horizontal,
                                         children: [

                                           /// plantFeature class for height, humidity icon and data

                                           PlantFeatures(feature: "Height", featureInfo:PlantsData().plantData[0].featuresList["Height"], iconData: Icons.height),
                                           SizedBox(width: width*0.1,),
                                           PlantFeatures(feature: "Humidity", featureInfo: PlantsData().plantData[0].featuresList["Humidity"], iconData: Icons.water_drop),
                                           SizedBox(width: width*0.1,),
                                           PlantFeatures(feature: "Width", featureInfo: PlantsData().plantData[0].featuresList["Width"], iconData: Icons.compare_arrows),
                                           SizedBox(width: width*0.1,),
                                           PlantFeatures(feature: "Width", featureInfo: PlantsData().plantData[0].featuresList["Width"], iconData: Icons.water_drop),
                                         ],
                                       ),
                                        ),
                                        SizedBox(height: width*0.1,),

                                        /// Bottom Action Cart Button

                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [

                                            /// cart button

                                            ActionButton(iconData: Icons.shopping_cart, iconColor: kDarkGreen, containerBackgroundColor: kLightSky, dimension: 0.15),

                                            /// buying large button

                                          Container(
                                            decoration: BoxDecoration(
                                              color: kDarkGreen,
                                              borderRadius: BorderRadius.circular(20.0),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 60.0,vertical: 16),

                                              /// buying buttton icon and text

                                              child: Row(
                                                children: [
                                                  Icon(Icons.backpack_rounded,color: Colors.white,),
                                                  Text("BuyNow",style: kHeaderSubTitleFontStyle.copyWith(fontSize:20.0,color: Colors.white,fontWeight: FontWeight.normal),),
                                                ],
                                              ),
                                            ),
                                          )
                                          ],
                                        )

                                  
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        );
                      }),

                ]),
              ),


            ],
          )),
    );
  }
}
