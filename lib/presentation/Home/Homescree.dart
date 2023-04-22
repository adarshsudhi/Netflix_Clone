import 'dart:ui';
import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/Application/Search/search_bloc.dart';
import 'package:netflix/Application/Topindian/topindianmovie_bloc.dart';
import 'package:netflix/Application/Toprated/toprated_bloc.dart';
import 'package:netflix/Domain/TopIndianmovies/models/Topindianmoviemodels.dart';
import 'package:netflix/core/Colors/Spaces.dart';
import 'package:netflix/core/Colors/Strings.dart';
import 'package:netflix/infrastructure/core/API_Endpoints.dart';
import 'package:netflix/presentation/Download/Download.dart';
import 'package:netflix/presentation/Home/widgets/MainHomeCard.dart';
import 'package:netflix/presentation/Search/SearchResultScreen.dart';
import 'package:netflix/presentation/Search/widgets/MovieCards.dart';
import 'package:netflix/presentation/Search/widgets/SearchResultTiless.dart';
import 'package:netflix/presentation/Search/widgets/TitleForwidgets.dart';
import 'package:netflix/presentation/ShowDetails/ShowMovieDetails.dart';
import 'package:netflix/presentation/ShowDetails/Widgets/ShowMoviesandDetails.dart';

import '../../Application/Download/download_bloc.dart';
import '../ShowDetails/ShowTVDetails.dart';

ValueNotifier<bool> Direction = ValueNotifier(true);

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      return BlocProvider.of<SearchBloc>(context).add(SearchEvent.initialize());
    });

    BlocProvider.of<TopindianmovieBloc>(context)
        .add(TopindianmovieEvent.getTopIndianmovies());

    BlocProvider.of<TopratedBloc>(context).add(TopratedEvent.getToprated());

    return Scaffold(
        body: ValueListenableBuilder(
            valueListenable: Direction,
            builder: (context, index, _) {
              return NotificationListener<UserScrollNotification>(
                onNotification: (value) {
                  final ScrollDirection direction = value.direction;
                  if (direction == ScrollDirection.forward) {
                    Direction.value = true;
                  } else if (direction == ScrollDirection.reverse) {
                    Direction.value = false;
                  }

                  return true;
                },
                child: Stack(
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MainHomeCard(size: size),
                          Kheight10,
                          SearchTitleeScreen(title: "Top rated TV shows"),
                          BlocBuilder<TopratedBloc, TopratedState>(
                            builder: (context, state) {
                              return Container(
                                  height: size.height / 3.3,
                                  width: double.infinity,
                                  child: ListView.separated(
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) {
                                        return Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: InkWell(
                                            onTap: () {
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                      builder: (context) {
                                                return MovieDetails(
                                                  id: state
                                                      .Topratedlist[index].id!,
                                                  index: index,
                                                  Description: state
                                                      .Topratedlist[index]
                                                      .overview!,
                                                  Fontposter: state
                                                      .Topratedlist[index]
                                                      .posterPath!,
                                                  Moviename: state
                                                      .Topratedlist[index]
                                                      .title!,
                                                  backposter: state
                                                      .Topratedlist[index]
                                                      .Backdrop!,
                                                  rating: state
                                                      .Topratedlist[index]
                                                      .popularity!,
                                                );
                                              }));
                                            },
                                            child: Hero(
                                              tag: "${index}",
                                              transitionOnUserGestures: true,
                                              child: Container(
                                                height: size.height / 4,
                                                width: size.width / 2.3,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    image: DecorationImage(
                                                        image: NetworkImage(
                                                            "${APIimageURL}${state.Topratedlist[index].posterPath}"),
                                                        fit: BoxFit.cover)),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                      separatorBuilder: (context, index) {
                                        return Kheight10;
                                      },
                                      itemCount: state.Topratedlist.length));
                            },
                          ),
                          SearchTitleeScreen(title: "Trending Now"),
                          BlocBuilder<SearchBloc, SearchState>(
                            builder: (context, trendstate) {
                              if (trendstate.iserror == true) {
                                return Center(
                                  child: Text("An Error Occured"),
                                );
                              } else if (trendstate.isloading == true) {
                                return Center(
                                  child: CircularProgressIndicator(
                                    color: Colors.white,
                                  ),
                                );
                              } else if (trendstate.downloads.isEmpty) {
                                return Center(
                                  child: Text("Error 404"),
                                );
                              } else {
                                return Container(
                                    height: size.height / 3,
                                    width: double.infinity,
                                    child: ListView.separated(
                                        shrinkWrap: true,
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder: (context, iindex) {
                                          return Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: InkWell(
                                              onTap: () {
                                                Navigator.of(context).push(
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            ShowMovieDetails(
                                                              index:
                                                                  "${iindex}",
                                                              rating: trendstate
                                                                  .downloads[
                                                                      iindex]
                                                                  .Rating!,
                                                              overview: trendstate
                                                                  .downloads[
                                                                      iindex]
                                                                  .overview!,
                                                              backdrop: trendstate
                                                                  .downloads[
                                                                      iindex]
                                                                  .backdrop,
                                                              posterpath: trendstate
                                                                  .downloads[
                                                                      iindex]
                                                                  .posterPath!,
                                                              MovieIndex:
                                                                  iindex,
                                                              Movietitle: trendstate
                                                                      .downloads[
                                                                          iindex]
                                                                      .postertitle ??
                                                                  "Not Found",
                                                              id: trendstate
                                                                  .downloads[
                                                                      iindex]
                                                                  .id!,
                                                            )));
                                              },
                                              child: Hero(
                                                tag: "${iindex}Trend",
                                                child: Container(
                                                  height: size.height / 4,
                                                  width: size.width / 2,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                      image: DecorationImage(
                                                          image: NetworkImage(
                                                              "${APIimageURL}${trendstate.downloads[iindex].posterPath}"),
                                                          fit: BoxFit.cover)),
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                        separatorBuilder: (context, iindex) {
                                          return Kheight10;
                                        },
                                        itemCount:
                                            trendstate.downloads.length));
                              }
                            },
                          ),
                          SearchTitleeScreen(title: "Top Indian movies"),
                          Container(
                            height: size.height / 2.6,
                            width: double.infinity,
                            child: BlocBuilder<TopindianmovieBloc,
                                TopindianmovieState>(
                              builder: (context, state) {
                                return Container(
                                  child: ListView.separated(
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) {
                                        return Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            child: Stack(
                                              children: [
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 30,
                                                    ),
                                                    Container(
                                                      height: size.height / 2.6,
                                                      width: size.width / 1.8,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                          image: DecorationImage(
                                                              image: NetworkImage(
                                                                  "${APIimageURL}${state.topmovies[index].posterpath}"),
                                                              fit: BoxFit
                                                                  .cover)),
                                                    ),
                                                  ],
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  child: BorderedText(
                                                    strokeWidth: 5,
                                                    strokeColor: Colors.white,
                                                    child: Text(
                                                      "${index + 1}",
                                                      style: GoogleFonts.actor(
                                                          color: Colors
                                                              .transparent,
                                                          fontSize: 180),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                          width: 10,
                                        );
                                      },
                                      itemCount: state.topmovies.length),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    AnimatedContainer(
                        duration: Duration(milliseconds: 400),
                        height: Direction.value ? size.height / 10 : 0.1,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 10),
                                    child: SizedBox(
                                      height: 80,
                                      width: 100,
                                      child: Image.asset(
                                        "assets/net.png",
                                        fit: BoxFit.fitWidth,
                                      ),
                                    ),
                                  ),
                                  Direction.value
                                      ? IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.cast,
                                          ))
                                      : Container(),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "TV Shows",
                                    style: GoogleFonts.actor(fontSize: 17),
                                  ),
                                  Text("Movies",
                                      style: GoogleFonts.actor(fontSize: 17)),
                                  Text("Categories",
                                      style: GoogleFonts.actor(fontSize: 17))
                                ],
                              ),
                            )
                          ],
                        ))
                  ],
                ),
              );
            }));
  }
}
