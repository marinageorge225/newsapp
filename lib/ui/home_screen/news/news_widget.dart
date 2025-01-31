import 'package:flutter/material.dart';
import 'package:newsapp/api/api_manager.dart';
import 'package:newsapp/model/NewsResponse.dart';
import 'package:newsapp/ui/home_screen/news/news_item.dart';
import 'package:newsapp/utils/app_colors.dart';

import '../../../model/SourceResponse.dart';

class NewsWidget extends StatefulWidget {
 Source source;
 NewsWidget({required this.source});

  @override
  State<NewsWidget> createState() => _NewsWidgetState();
}

class _NewsWidgetState extends State<NewsWidget> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<NewsResponse?>(
        future:ApiManager.getNewsBySourceId(widget.source.id ?? ""),
        builder: (context,snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
            return const Center(
                child: CircularProgressIndicator(
                  color:AppColors.greyColor,
                )
            );
          }
          else if(snapshot.hasError){ //moshkela men 3nde ana
            return Center(
              child: Column(
                children: [
                  Text("Something Went Wrong",
                    style: Theme.of(context).textTheme.headlineLarge,),
                  ElevatedButton(onPressed: (){
                    ApiManager.getNewsBySourceId(widget.source.id??'');
                    setState(() {

                    });
                    },
                      child: Text('Try Again',style: Theme.of(context).textTheme.headlineMedium,))
                ],
              ),
            );
          }
          if(snapshot.data!.status == 'error'){
            return Center(
              child: Column(
                children: [
                  Text(snapshot.data!.message!,
                    style: Theme.of(context).textTheme.headlineLarge,),
                  ElevatedButton(onPressed: (){
                    ApiManager.getNewsBySourceId(widget.source.id??'');
                    setState(() {

                    });
                  },
                      child: Text('Try Again',style: Theme.of(context).textTheme.headlineMedium,))
                ],
              ),
            );
          }
          var newsList = snapshot.data?.articles??[];
          return ListView.builder(
              itemBuilder:(context,index){
                return NewsItem(news:newsList[index],);
              },
          itemCount:newsList.length ,);

        });
  }
}
