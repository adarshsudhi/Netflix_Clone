import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/Colors/Strings.dart';

class ShowPOPup extends StatelessWidget {
  final String title;
  final String posterpath;
  final String Overview;

  const ShowPOPup({
    Key? key,
    required this.title,
    required this.posterpath,
    required this.Overview,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        height: size.height / 1.5,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.black.withOpacity(0.6)),
        child: ListView(
          children: [
            Container(
              height: size.height / 3,
              width: size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  image: DecorationImage(
                      image: NetworkImage("${APIimageURL}${posterpath}"),
                      fit: BoxFit.cover,
                      filterQuality: FilterQuality.high)),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                Overview,
                style: GoogleFonts.actor(fontSize: 15),
              ),
            )
          ],
        ));
  }
}
