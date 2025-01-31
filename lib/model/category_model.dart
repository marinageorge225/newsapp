import 'package:newsapp/utils/asset_manager.dart';

class CategoryModel{
  String id;
  String title;
  String imagePath;


  CategoryModel({required this.id, required this.title
  ,required this.imagePath });

/* sources category
business entertainment general
health science sports technology
 */
  static List<CategoryModel> getCategoriesList(){
    return [
      CategoryModel(id: 'general', title: 'General', imagePath:AssetManager.generalImage),
      CategoryModel(id: 'business', title: 'Business', imagePath:AssetManager.businessImage),
      CategoryModel(id: 'sports', title: 'Sports', imagePath:AssetManager.sportsImage),
      CategoryModel(id: 'technology', title: 'Technology', imagePath:AssetManager.technologyImage),
      CategoryModel(id: 'entertainment', title: 'Entertainment', imagePath:AssetManager.entertainmentImage),
      CategoryModel(id: 'health', title: 'Health', imagePath:AssetManager.healthImage),

      CategoryModel (id: 'science', title: 'Science', imagePath:AssetManager.scienceImage),
    ];
  }

}

class AseetsManager {
}