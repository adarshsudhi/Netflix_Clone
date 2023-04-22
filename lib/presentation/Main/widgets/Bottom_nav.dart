import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:netflix/core/Colors/Colors.dart';

ValueNotifier<int> Indexnotify = ValueNotifier(0);

class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: Indexnotify,
        builder: (context, int value, _) {
          return BottomNavigationBar(
              selectedItemColor: Colors.white,
              backgroundColor: BackGroundColor,
              type: BottomNavigationBarType.fixed,
              unselectedItemColor: Colors.grey.withOpacity(0.8),
              elevation: 5,
              currentIndex: value,
              onTap: (newvalue) {
                Indexnotify.value = newvalue;
              },
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.image), label: "Hot & New"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.emoji_emotions), label: "Fast Laugh"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), label: "Search"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.download), label: "Download"),
              ]);
        });
  }
}
