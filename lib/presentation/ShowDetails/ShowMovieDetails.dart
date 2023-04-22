import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/Application/GetActors/get_actors_bloc.dart';
import 'package:netflix/Application/GetMovieActors/get_movie_actors_bloc.dart';

import 'package:netflix/core/Colors/Spaces.dart';
import 'package:netflix/core/Colors/Strings.dart';

import 'package:netflix/presentation/Search/widgets/TitleForwidgets.dart';
import 'package:netflix/presentation/ShowDetails/Widgets/Castandother.dart';
import 'ShowTVDetails.dart';
import 'Widgets/Ratiings.dart';

class ShowMovieDetails extends StatelessWidget {
  final String posterpath;
  final String backdrop;
  final String index;
  final int MovieIndex;
  final String Movietitle;
  final String overview;
  final double rating;
  final int id;
  const ShowMovieDetails(
      {super.key,
      required this.id,
      required this.posterpath,
      required this.backdrop,
      required this.index,
      required this.MovieIndex,
      required this.Movietitle,
      required this.overview,
      required this.rating});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    BlocProvider.of<GetMovieActorsBloc>(context)
        .add(GetMovieActorsEvent.getmovieactors(id));
    return Container(
      child: Stack(
        children: [
          Container(
            width: size.width,
            child: Container(
              height: size.height / 2.3,
              width: size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage("${APIimageURL}${backdrop}"),
                      fit: BoxFit.cover,
                      filterQuality: FilterQuality.high)),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              width: size.width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.center,
                      end: Alignment.topCenter,
                      colors: [
                    Colors.black,
                    Colors.black,
                    Colors.black.withOpacity(0.6),
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
                    tag: "${index}Trend",
                    child: Card(
                      elevation: 30,
                      shadowColor: Colors.grey.withOpacity(0.9),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Container(
                        height: size.height / 2.8,
                        width: size.width / 1.8,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image:
                                    NetworkImage("${APIimageURL}${posterpath}"),
                                fit: BoxFit.cover)),
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
                                style: GoogleFonts.actor(color: Colors.red),
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
                                style: GoogleFonts.actor(color: Colors.red),
                              )),
                        ),
                      )
                    ],
                  ),
                  Kheight30,
                  SizedBox(
                    width: size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${Movietitle}",
                            style: GoogleFonts.actor(
                                color: Colors.white,
                                fontSize: 30,
                                decoration: TextDecoration.none),
                          ),
                          Kheight10,
                          Text(
                            overview,
                            style: GoogleFonts.actor(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.w100,
                                decoration: TextDecoration.none),
                          ),
                          Kheight10
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  BlocBuilder<GetMovieActorsBloc, GetMovieActorsState>(
                      builder: (context, Movieactorstate) {
                    if (Movieactorstate.Isloading == true) {
                      return const Center(
                        child: CircularProgressIndicator(
                          color: Colors.red,
                        ),
                      );
                    } else if (Movieactorstate.Iserror) {
                      return const Center(
                        child: Text("Error 404"),
                      );
                    } else if (Movieactorstate.Actors.isEmpty) {
                      return const Center(
                        child: Text("Not Found"),
                      );
                    } else {
                      return Container(
                        height: size.height / 6,
                        width: size.width,
                        child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, actorindex) {
                              return ActorsImage(
                                  castprofile:
                                      "${APIimageURL}${Movieactorstate.Actors[actorindex].Profilepic}",
                                  name:
                                      "${Movieactorstate.Actors[actorindex].Name}");
                            },
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                width: 10,
                              );
                            },
                            itemCount: Movieactorstate.Actors.length),
                      );
                    }
                  })
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
