import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/presentation/Search/widgets/TitleForwidgets.dart';

import '../../../Application/GetActors/get_actors_bloc.dart';
import 'Castandother.dart';

class ActorsWidget extends StatelessWidget {
  const ActorsWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height / 6,
      width: size.width,
      child: BlocBuilder<GetActorsBloc, GetActorsState>(
          builder: (context, actorsstate) {
        if (actorsstate.Isloading) {
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.red,
            ),
          );
        } else if (actorsstate.Iserror) {
          return const Center(
            child: Text("Error 404"),
          );
        } else if (actorsstate.Actors.isEmpty) {
          return const Center(
            child: Text("Not Found"),
          );
        }
        return ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, iindex) {
              return SizedBox(
                height: 50,
                child: ActorsImage(
                    castprofile: "${actorsstate.Actors[iindex].ProfilePic}",
                    name: "${actorsstate.Actors[iindex].name}"),
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(
                width: 10,
              );
            },
            itemCount: actorsstate.Actors.length);
      }),
    );
  }
}
