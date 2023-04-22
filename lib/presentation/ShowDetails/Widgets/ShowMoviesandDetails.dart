import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/Colors/Spaces.dart';

import '../../../core/Colors/Strings.dart';

class ShowandMoviedetails extends StatelessWidget {
  final int Showindex;
  final String frontposter;
  final String index;
  final String Moviename;
  final String Description;
  final String backposter;
  const ShowandMoviedetails({
    super.key,
    required this.size,
    required this.Showindex,
    required this.frontposter,
    required this.Moviename,
    required this.Description,
    required this.backposter,
    required this.index,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Hero(
              tag: "${index}",
              transitionOnUserGestures: true,
              child: Container(
                height: size.height / 3,
                width: size.width / 1.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage("${APIimageURL}${frontposter}"),
                        fit: BoxFit.cover)),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Kheight30,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white.withOpacity(0.8)),
                      child: Center(
                        child: TextButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.play_arrow,
                              color: Colors.red,
                            ),
                            label: Text(
                              "Play",
                              style: GoogleFonts.actor(color: Colors.red),
                            )),
                      ),
                    ),
                    Container(
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white.withOpacity(0.8)),
                      child: Center(
                        child: TextButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.info,
                              color: Colors.red,
                            ),
                            label: Text(
                              "Info",
                              style: GoogleFonts.actor(color: Colors.red),
                            )),
                      ),
                    )
                  ],
                ),
                Kheight30,
                Text(
                  Moviename,
                  style: GoogleFonts.actor(fontSize: 30),
                ),
                Kheight20,
                Text(
                  Description,
                  style: GoogleFonts.actor(fontSize: 16),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
