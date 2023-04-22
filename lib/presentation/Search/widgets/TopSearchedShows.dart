import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/Colors/Spaces.dart';
import 'package:netflix/core/Colors/Strings.dart';

class TopSearchedMovies extends StatelessWidget {
  final String URL;
  final String title;
  const TopSearchedMovies({super.key, required this.URL, required this.title});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          height: size.height / 4,
          width: size.width / 2.3,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage("${APIimageURL}${URL}"),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(10)),
        ),
        Kheight10,
        Expanded(
            child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(title, style: GoogleFonts.actor(fontSize: 16)),
        )),
        Padding(
          padding: const EdgeInsets.only(right: 5, left: 5),
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.white),
                borderRadius: BorderRadius.circular(60)),
            child: Center(
                child: Icon(
              Icons.play_arrow,
              size: 25,
            )),
          ),
        )
      ],
    );
  }
}
