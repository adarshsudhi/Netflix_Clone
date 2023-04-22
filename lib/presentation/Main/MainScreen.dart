import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:netflix/core/Colors/Colors.dart';
import 'package:netflix/presentation/Download/Download.dart';
import 'package:netflix/presentation/Fast_laugh/Fast_Laugh.dart';
import 'package:netflix/presentation/Home/Homescree.dart';
import 'package:netflix/presentation/Main/widgets/Bottom_nav.dart';
import 'package:netflix/presentation/New&Hot/New&Hot.dart';
import 'package:netflix/presentation/Search/Search.dart';
import 'package:netflix/presentation/Search/SearchResultScreen.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  List<Widget> Pages = [
    HomeScreen(),
    NewandHot(),
    FastLaugh(),
    SearchScreen(),
    Downloadscreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackGroundColor,
      body: ValueListenableBuilder(
          valueListenable: Indexnotify,
          builder: (context, int value, _) {
            return SafeArea(child: Pages[value]);
          }),
      bottomNavigationBar: BottomNavBarWidget(),
    );
  }
}
