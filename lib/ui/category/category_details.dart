import 'package:flutter/material.dart';
import 'package:newsapp/api/api_manager.dart';
import 'package:newsapp/model/SourceResponse.dart';
import 'package:newsapp/model/category_model.dart';
import 'package:newsapp/ui/category/source_tab_widget.dart';

class CategoryDetails extends StatefulWidget {
CategoryModel category;
CategoryDetails({required this.category});
  @override
  State<CategoryDetails> createState() => _CategoryDetailsState();
}

class _CategoryDetailsState extends State<CategoryDetails> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SourceResponse?>(
        future:ApiManager.getSources(widget.category.id), //bnady 3l api aly hatrg3li l future
        builder: (context,snapshot){
          //loading
          if(snapshot.connectionState==ConnectionState.waiting){
            return Center(
              child: CircularProgressIndicator(
                color: Colors.grey,
              ),
            );
          }
          else if (snapshot.hasError){ //fe error 7sl men na7yty
            return Column(
              children: [
                Text('Something went Wrong'),
                ElevatedButton(onPressed: (){
                  ApiManager.getSources(widget.category.id);
                  setState(() {

                  });
                },
                    child:Text('Try Again')),
              ],
            );
          }
          //todo server response ( okay , error ) "status"

          //todo : server response => error:
          if(snapshot.data!.status == 'error'){
            return Center(
              child: Column(
                children: [
                  Text("Something Went Wrong",
                    style: Theme.of(context).textTheme.headlineLarge,),
                  ElevatedButton(onPressed: (){
                    ApiManager.getSources(widget.category.id);
                    setState(() {

                    });
                  },
                      child: Text('Try Again',style: Theme.of(context).textTheme.headlineMedium,))
                ],
              ),
            );
          }
          //todo server respone => successe
          var sourcesList = snapshot.data!.sources!;
          return SourceTabWidget(sourcesList: sourcesList);

        }
    );
  }
}
