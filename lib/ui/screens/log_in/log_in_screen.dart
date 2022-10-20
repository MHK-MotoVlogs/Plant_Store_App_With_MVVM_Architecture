import 'package:flutter/material.dart';
import 'package:plant_store_app/core/utils/consts/heading_text_font/heading_text_font.dart';
import 'package:plant_store_app/core/utils/consts/network_images_urls/network_images_urls.dart';
import 'package:plant_store_app/core/utils/consts/ui_colors/ui_colors.dart';
import '../../custom_widgets/Login_image_custom_clipper.dart';
import '../../custom_widgets/footer_button/rounded_button.dart';
import '../../custom_widgets/text_form_field/text_form_field.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(

      /// scroll view used to avoid exception of overflow

      body: SingleChildScrollView(

        /// Main column

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            /// ClipPath for header image

            ClipPath(

              /// LogInHeaderImageClipperer class for CustomCLipPath

              clipper: LogInHeaderImageClipperer(),

              /// container wraping header image

              child: Container(
                height: height * 0.4,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          kHeaderImage)),
                ),
              ),
            ),

            /// Stack for greeting header and subtitle along with leaf image

            Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [

                    /// greating Heading

                    Text(
                      'Welcome Back',
                      style: kHeaderFontStyle,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),

                    /// Subtitle heading

                    Text(
                      'Log in to Your Account',
                      style: kHeaderSubTitleFontStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),

                /// positioned leaf image

                Positioned(
                  right: 0,
                  child: Image.network(
                   kSmallLeafImage,
                    height: width*0.18,
                    width: width*0.18,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height*0.02,
            ),

            /// TextFormFields class for full name

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
              child: TextFormFields(prefixIconData: Icons.person, hint: 'Full name'),
            ),

            /// TextFormFields class for password

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
              child: TextFormFields(prefixIconData: Icons.lock, hint: '*****'),
            ),

            /// row having remember me and forgot password buttons

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  /// Row for custom checkbox icon and its instruction

                Row(
                  children: [

                    /// custom checkbox

                    ClipOval(
                        child: Container(color:kDarkGreen,child: Icon(Icons.check,color: Colors.white,size: 25,))),
                    SizedBox(width: width*0.02,),

                    /// check box instruction

                    Text('Remember Me',style: TextStyle(color: kDarkGreen),),
                  ],
                ),

                /// Text for forget action

                Text("Forget Password ?",style:TextStyle(color: kDarkGreen),),
              ],),
            ),
            SizedBox(
              height: height*0.07,
            ),

            /// Footer action button with instruction

            LargeButton(txt: 'Log In',question: "Don't have an account? ",action: "Sign Up",),
          ],
        ),
      ),
    );
  }
}

