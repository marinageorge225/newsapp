import 'package:flutter/material.dart';
import 'package:newsapp/model/SourceResponse.dart';
import 'package:newsapp/ui/category/source_name_item.dart';
import 'package:newsapp/ui/home_screen/news/news_widget.dart';
import 'package:newsapp/utils/app_colors.dart';

class SourceTabWidget extends StatefulWidget {
  List<Source> sourcesList;

  SourceTabWidget({required this.sourcesList});

  @override
  State<SourceTabWidget> createState() => _SourceTabWidgetState();
}

class _SourceTabWidgetState extends State<SourceTabWidget> {
  int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: widget.sourcesList.length,
        child: Column(
          children: [
            TabBar(
              onTap: (index){
                selectedIndex = index;
                setState(() {

                });
              },
                dividerColor: AppColors.transparentColor,
              isScrollable: true,
                indicatorColor: Theme.of(context).indicatorColor,
                tabAlignment: TabAlignment.start,
                tabs: widget.sourcesList.map((source){
                  return SourceNameItem(source: source,
                      isSelected: selectedIndex == widget.sourcesList.indexOf(source));
            }).toList()
                ),
            Expanded(child: NewsWidget(source: widget.sourcesList[selectedIndex]))
          ],
        )
    );
  }
}
