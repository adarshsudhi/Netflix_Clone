import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/Application/Search/search_bloc.dart';
import 'package:netflix/Domain/Searchmodel/searchres/searchres.dart';
import 'package:netflix/core/Colors/Spaces.dart';
import 'package:netflix/core/Colors/Strings.dart';
import 'package:netflix/presentation/Search/widgets/SearchTextFormField.dart';
import 'package:netflix/presentation/Search/widgets/TopSearchedShows.dart';
import 'package:netflix/presentation/Search/widgets/TitleForwidgets.dart';

import 'SearchResultScreen.dart';

ValueNotifier<bool> Loading = ValueNotifier(false);

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});

  TextEditingController Searchcontroller = TextEditingController();
  clear() {
    Searchcontroller.clear();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      return BlocProvider.of<SearchBloc>(context).add(SearchEvent.initialize());
    });
    return Scaffold(
        body: ValueListenableBuilder(
      valueListenable: Loading,
      builder: (BuildContext context, bool value, _) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchTextFormField(
              cancel: () {
                clear();
              },
              tap: (val) async {
                if (val != null) {
                  value = true;
                  BlocProvider.of<SearchBloc>(context)
                      .add(SearchEvent.searchmovie(val));
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (ctx) => SearchResult()));
                }
              },
              Searchcontroller: Searchcontroller,
            ),
            InkWell(
              onTap: () {
                print(Searchcontroller.text);
              },
              child: SearchTitleeScreen(
                title: "Top Searches",
              ),
            ),
            Kheight10,
            Expanded(
              child: Loading == true
                  ? CircularProgressIndicator(
                      color: Colors.white,
                    )
                  : BlocBuilder<SearchBloc, SearchState>(
                      builder: (context, state) {
                        if (state.isloading == true) {
                          return Center(
                            child: CircularProgressIndicator(
                              color: Colors.white,
                            ),
                          );
                        } else if (state.iserror == true) {
                          return Center(
                            child: Text("An Error Occurred"),
                          );
                        } else if (state.downloads.isEmpty) {
                          return Center(
                            child: Text("No Data"),
                          );
                        } else {
                          return ListView.separated(
                              itemBuilder: (ctx, index) {
                                gettitle() {
                                  if (state.downloads[index].postertitle ==
                                      null) {
                                    return "${state.downloads[index].postername}";
                                  }
                                  return "${state.downloads[index].postertitle}";
                                }

                                return TopSearchedMovies(
                                  URL:
                                      "${APIimageURL}${state.downloads[index].posterPath}",
                                  title: gettitle(),
                                );
                              },
                              separatorBuilder: (context, index) {
                                return SizedBox(
                                  height: 20,
                                );
                              },
                              itemCount: state.downloads.length);
                        }
                      },
                    ),
            )
          ],
        );
      },
    ));
  }
}
