import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/Application/Search/search_bloc.dart';
import 'package:netflix/presentation/Search/widgets/MovieCards.dart';
import 'package:netflix/presentation/Search/widgets/TitleForwidgets.dart';
import 'package:netflix/presentation/ShowDetails/ShowMovieDetails.dart';

class SearchResultTiles extends StatelessWidget {
  const SearchResultTiles({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        if (state.isloading == true) {
          return Container(
            child: Center(
              child: CircularProgressIndicator(color: Colors.white),
            ),
          );
        } else if (state.iserror == true) {
          return Center(
            child: Text("An Error Occured"),
          );
        } else if (state.result.isEmpty) {
          return Center(
            child: Text("Error 404"),
          );
        } else if (state.result == null) {
          return Center(
            child: Text("Error 404"),
          );
        } else {
          return GridView.count(
            mainAxisSpacing: 9,
            crossAxisSpacing: 9,
            crossAxisCount: 2,
            childAspectRatio: 1 / 1.5,
            children: List.generate(state.result.length, (index) {
              var data = state.result[index];
              return InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ShowMovieDetails(
                          id: data.id!,
                          posterpath: data.posterPath!,
                          backdrop: data.backdroppath!,
                          index: "$index",
                          MovieIndex: index,
                          Movietitle: data.originalTitle ?? data.orginalname!,
                          overview: data.overview!,
                          rating: data.rating!)));
                },
                child: MovieCards(
                  Imagefrombloc: "${state.result[index].posterPath}",
                ),
              );
            }),
          );
        }
      },
    );
  }
}
