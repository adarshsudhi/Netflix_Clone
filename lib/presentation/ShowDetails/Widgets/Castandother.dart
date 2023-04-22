import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/Colors/Strings.dart';
import 'package:netflix/presentation/Search/widgets/TitleForwidgets.dart';

class ActorsImage extends StatelessWidget {
  final String castprofile;
  final String name;
  const ActorsImage({super.key, required this.castprofile, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage("${APIimageURL}${castprofile}"),
          ),
        ),
        Text(
          name,
          style: GoogleFonts.actor(
              color: Colors.white,
              decoration: TextDecoration.none,
              fontSize: 13),
        )
      ],
    );
  }
}
