import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/presentation/Search/widgets/TopSearchedShows.dart';

String ImageURL =
    "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/xUfRZu2mi8jH6SzQEJGP6tjBuYj.jpg";

class SearchTitleeScreen extends StatelessWidget {
  final String title;
  const SearchTitleeScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        title,
        style: GoogleFonts.actor(fontSize: 25),
      ),
    );
  }
}
