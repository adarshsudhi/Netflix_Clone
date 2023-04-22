import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/Colors/Spaces.dart';

class VideoIconItems extends StatelessWidget {
  final IconData Icons;
  final String Title;
  final VoidCallback ontap;
  const VideoIconItems(
      {super.key,
      required this.Icons,
      required this.Title,
      required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card(
          shadowColor: Colors.grey.withOpacity(0.3),
          elevation: 10,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          color: Colors.transparent,
          child: IconButton(
              onPressed: ontap,
              icon: Icon(
                Icons,
                size: 30,
              )),
        ),
        Text(
          Title,
          style: GoogleFonts.actor(fontSize: 10),
        )
      ],
    );
  }
}
