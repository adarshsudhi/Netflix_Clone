import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:netflix/core/Colors/Strings.dart';
import 'package:netflix/presentation/Search/widgets/TitleForwidgets.dart';

class MovieCards extends StatelessWidget {
  final String Imagefrombloc;
  const MovieCards({super.key, required this.Imagefrombloc});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              image: NetworkImage("${APIimageURL}${Imagefrombloc}"),
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high)),
    );
  }
}
