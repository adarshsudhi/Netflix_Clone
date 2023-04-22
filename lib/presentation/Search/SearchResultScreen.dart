import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/Application/Search/search_bloc.dart';
import 'package:netflix/presentation/Search/widgets/SearchResultTiless.dart';
import 'package:netflix/presentation/Search/widgets/SearchTextFormField.dart';
import 'package:netflix/presentation/Search/widgets/TitleForwidgets.dart';

import '../../core/Colors/Spaces.dart';
import 'widgets/TopSearchedShows.dart';

class SearchResult extends StatelessWidget {
  SearchResult({super.key});
  TextEditingController SearchResultcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                )),
          ],
        ),
        SearchTitleeScreen(
          title: "Movies & TV",
        ),
        Expanded(child: SearchResultTiles())
      ],
    )));
  }
}
