import 'package:flutter/material.dart';
import 'package:newsapp/model/SourceResponse.dart';
import 'package:newsapp/utils/app_colors.dart';

class SourceNameItem extends StatelessWidget {
  Source source;
  SourceNameItem({required this.source,required this.isSelected});
  bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Text(source.name??'',style: isSelected? Theme.of(context).textTheme.labelLarge:
    Theme.of(context).textTheme.labelMedium);

  }
}
