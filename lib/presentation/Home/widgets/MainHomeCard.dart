import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Application/Search/search_bloc.dart';
import '../../../core/Colors/Strings.dart';

class MainHomeCard extends StatelessWidget {
  const MainHomeCard({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(builder: (context, state) {
      if (state.iserror == true) {
        return Container(
          height: size.height / 1.5,
          child: Center(
            child: Text("An Error Occured"),
          ),
        );
      } else if (state.isloading == true) {
        return Container(
          height: size.height / 1.5,
          child: Center(
            child: CircularProgressIndicator(
              color: Colors.white,
            ),
          ),
        );
      } else if (state.downloads.isEmpty) {
        return Container(
          height: size.height / 1.5,
          child: Center(
            child: Text("Error 404"),
          ),
        );
      } else {
        return Container(
          height: size.height / 1.5,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "${APIimageURL}${state.downloads[0].posterPath}"),
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high)),
          child: Stack(
            children: [
              Container(
                height: size.height,
                width: size.width,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.center,
                        colors: [
                      Colors.black,
                      Colors.black.withOpacity(0.9),
                      Colors.black.withOpacity(0.6),
                      Colors.black.withOpacity(0.1),
                      Colors.transparent
                    ])),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.add,
                          size: 30,
                        ),
                        Text(
                          "My List",
                          style: GoogleFonts.actor(),
                        )
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 80,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: TextButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.play_arrow,
                            color: Colors.black,
                          ),
                          label: Text(
                            "Play",
                            style: GoogleFonts.actor(color: Colors.black),
                          )),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.info,
                          size: 30,
                        ),
                        Text(
                          "info",
                          style: GoogleFonts.actor(),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      }
    });
  }
}
