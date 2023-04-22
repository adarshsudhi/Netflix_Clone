import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/Application/Firebase/Getvideos/getvideos_bloc.dart';
import 'package:netflix/presentation/Widgets/appBar.dart';

import 'widgets/Video_lists.dart';

class FastLaugh extends StatelessWidget {
  const FastLaugh({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<GetvideosBloc>(context).add(GetvideosEvent.getallvideos());
    return BlocBuilder<GetvideosBloc, GetvideosState>(
      builder: (context, state) {
        if (state.isloading) {
          return Center(
            child: CircularProgressIndicator(
              color: Colors.white,
            ),
          );
        } else if (state.Vidoes.isEmpty) {
          return Center(
            child: Text("Error 404"),
          );
        }
        return Scaffold(
            body: Center(
                child: PageView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: state.Vidoes.length,
                    itemBuilder: (context, index) {
                      return VideoListStack(
                        Index: index,
                        VideoURL: state.Vidoes[index],
                      );
                    })));
      },
    );
  }
}
