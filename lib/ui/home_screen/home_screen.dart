import 'package:flutter/material.dart';
import 'package:newsapp/model/category_model.dart';
import 'package:newsapp/ui/category/category_details.dart';
import 'package:newsapp/ui/category/category_fragment.dart';
import 'package:newsapp/ui/home_screen/drawer/drawer.dart';
import 'package:newsapp/utils/app_colors.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'Home Screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          selectedCategory==null? 'Home' :
          selectedCategory!.title
          ,style: Theme.of(context).textTheme.headlineLarge,),
      ),
      drawer: Drawer(
        backgroundColor: AppColors.blackColor,
        child: HomeDrawer(),
      ),
      body:selectedCategory == null ?
      CategoryFragment(onViewAllClicked: onViewAllClicked,)
   : CategoryDetails(category:selectedCategory!,),
    );
  }

  CategoryModel? selectedCategory;
 //nfs fkrt l selected index h5zn ly dost 3lih
  void onViewAllClicked (CategoryModel newSelectedCategory){
    //todo: newSelectedCategory > user select(ly l user hy5taro
    selectedCategory = newSelectedCategory;
    setState(() {

    });
  }
}
