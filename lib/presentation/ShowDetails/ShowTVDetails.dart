import 'package:dartz/dartz.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/Application/GetActors/get_actors_bloc.dart';
import 'package:netflix/Application/Toprated/toprated_bloc.dart';
import 'package:netflix/core/Colors/Spaces.dart';
import 'package:netflix/core/Colors/Strings.dart';
import 'package:netflix/presentation/Search/widgets/MovieCards.dart';
import 'package:netflix/presentation/Search/widgets/TitleForwidgets.dart';
import 'package:netflix/presentation/ShowDetails/ShowMovieDetails.dart';
import 'package:netflix/presentation/ShowDetails/Widgets/Castandother.dart';

import '../../infrastructure/API/Api_key.dart';
import 'Widgets/ActorsWidget.dart';
import 'Widgets/Ratiings.dart';
import 'Widgets/ShowMoviesandDetails.dart';

class MovieDetails extends StatelessWidget {
  final int id;
  final String Moviename;
  final String Description;
  final double rating;
  final String backposter;
  final String Fontposter;
  final int index;
  MovieDetails(
      {super.key,
      required this.index,
      required this.id,
      required this.Moviename,
      required this.Description,
      required this.rating,
      required this.backposter,
      required this.Fontposter});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    BlocProvider.of<GetActorsBloc>(context)
        .add(GetActorsEvent.getActorsImage(id));
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: BlocBuilder<TopratedBloc, TopratedState>(
              builder: (context, state) {
            if (state.isloading == true) {
              return const Center(
                child: CircularProgressIndicator(
                  color: Colors.red,
                ),
              );
            } else if (state.error) {
              return const Center(
                child: Text("Error 404"),
              );
            } else if (state.Topratedlist.isEmpty) {
              return const Center(
                child: Text("Not Found"),
              );
            } else {
              return Container(
                  child: Stack(
                children: [
                  Container(
                    height: size.height / 2.3,
                    width: size.width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                              "${APIimageURL}${backposter}",
                            ),
                            fit: BoxFit.cover,
                            filterQuality: FilterQuality.high)),
                  ),
                  SingleChildScrollView(
                    child: Container(
                      width: size.width,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                            Colors.black,
                            Colors.black,
                            Colors.black,
                            Colors.transparent
                          ])),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: size.height / 5,
                          ),
                          Hero(
                            tag: "${index}",
                            child: Card(
                              shadowColor: Colors.grey.withOpacity(0.9),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              elevation: 30,
                              child: Container(
                                height: size.height / 2.8,
                                width: size.width / 1.8,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                          "${APIimageURL}${Fontposter}",
                                        ),
                                        fit: BoxFit.cover,
                                        filterQuality: FilterQuality.high)),
                              ),
                            ),
                          ),
                          Kheight30,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white.withOpacity(0.2)),
                                child: Center(
                                  child: TextButton.icon(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.play_arrow,
                                        color: Colors.red,
                                      ),
                                      label: Text(
                                        "Play",
                                        style: GoogleFonts.actor(
                                            color: Colors.red),
                                      )),
                                ),
                              ),
                              Container(
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white.withOpacity(0.2)),
                                child: Center(
                                  child: TextButton.icon(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.info,
                                        color: Colors.red,
                                      ),
                                      label: Text(
                                        "Info",
                                        style: GoogleFonts.actor(
                                            color: Colors.red),
                                      )),
                                ),
                              )
                            ],
                          ),
                          Kheight20,
                          Container(
                            width: size.width,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    Moviename,
                                    style: GoogleFonts.actor(fontSize: 30),
                                  ),
                                  Kheight20,
                                  Text(
                                    Description,
                                    style: GoogleFonts.actor(fontSize: 15),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Cast : ",
                                          style: GoogleFonts.actor(
                                              decoration: TextDecoration.none,
                                              color: Colors.red,
                                              fontSize: 20)),
                                      Kheight60,
                                      Row(
                                        children: [
                                          Text(
                                            "Rating :",
                                            style: GoogleFonts.actor(
                                                decoration: TextDecoration.none,
                                                fontSize: 20,
                                                color: Colors.red),
                                          ),
                                          RatingBarr(
                                            rate: rating,
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  ActorsWidget(size: size)
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ));
            }
          }),
        ));
  }
}
