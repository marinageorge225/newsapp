import 'package:flutter/material.dart';
import 'package:newsapp/ui/home_screen/drawer/section_drawer_item.dart';
import 'package:newsapp/utils/app_colors.dart';
import 'package:newsapp/utils/asset_manager.dart';

import '../home_screen.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          color: AppColors.whiteColor,
          height: height*0.18,
          width: double.infinity,
          child: Center(
            child: Text('News App',style: TextStyle(
              color: AppColors.blackColor,fontSize: 24,fontWeight: FontWeight.bold
            ),),
          ),
        ),
        SizedBox(height: height*0.02,),
        InkWell(
            onTap: (){
              Navigator.of(context).pushNamed(HomeScreen.routeName);
            },
            child: SectionDrawerItem(image: AssetManager.iconHome, text: 'Go to Home')),
        Divider(color: AppColors.whiteColor,thickness: 2,indent: width*0.05,endIndent: width*0.05,),

        SizedBox(height: height*0.02,),
        SectionDrawerItem(image: AssetManager.iconTheme, text: 'Theme'),
        Container(
          margin: EdgeInsets.symmetric(horizontal: width*0.04),
          padding:EdgeInsets.symmetric(
            horizontal: width*0.04,vertical: height*0.02
          ) ,
          decoration:BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: AppColors.whiteColor,
            )
          ) ,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Dark',style: TextStyle(
                fontSize: 20,color: AppColors.whiteColor
              ),),
              Icon(Icons.arrow_drop_down,
                color: AppColors.whiteColor,size: 30,)
            ],
          ),
        ),
        SizedBox(height: height*0.02,),
        Divider(color: AppColors.whiteColor,thickness: 2,indent: width*0.05,endIndent: width*0.05,),

        SizedBox(height: height*0.02,),
        SectionDrawerItem(image: AssetManager.iconLanguage, text: 'Language'),
        Container(
          margin: EdgeInsets.symmetric(horizontal: width*0.04),
          padding:EdgeInsets.symmetric(
              horizontal: width*0.04,vertical: height*0.02
          ) ,
          decoration:BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: AppColors.whiteColor,
              )
          ) ,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('English',style: TextStyle(
                  fontSize: 20,color: AppColors.whiteColor
              ),),
              Icon(Icons.arrow_drop_down,
                color: AppColors.whiteColor,size: 30,)
            ],
          ),
        ),
      ],
    ) ;
  }
}
