import 'package:flutter/material.dart';
import 'package:newsapp/utils/app_colors.dart';

class SectionDrawerItem extends StatelessWidget {
  String image;
  String text;

  SectionDrawerItem({required this.image,required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          ImageIcon(AssetImage(image),color: AppColors.whiteColor,),
          SizedBox(width: MediaQuery.of(context).size.width*0.02,),
          Text(text,style: TextStyle(color: AppColors.whiteColor,fontSize: 20,fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}
