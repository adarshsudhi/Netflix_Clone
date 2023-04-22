import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:netflix/Application/HotandNew/Everyoneswatching/bloc/everyones_bloc.dart';
import 'package:netflix/Application/HotandNew/comingsoon/bloc/comingsoon_bloc.dart';
import 'package:netflix/core/Colors/Spaces.dart';
import 'package:netflix/core/Colors/Strings.dart';
import 'package:netflix/presentation/Download/Download.dart';
import 'package:netflix/presentation/Fast_laugh/widgets/Video_lists.dart';
import 'package:netflix/presentation/Search/widgets/TitleForwidgets.dart';

import '../Widgets/appBar.dart';

class NewandHot extends StatelessWidget {
  const NewandHot({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      return BlocProvider.of<ComingsoonBloc>(context)
          .add(ComingsoonEvent.getComingsoon());
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      return BlocProvider.of<EveryonesBloc>(context)
          .add(EveryonesEvent.getEveryones());
    });
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: PreferredSize(
              child: AppBar(
                title: Text("Hot & New"),
                actions: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.cast)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.cast)),
                ],
                bottom: TabBar(
                    labelStyle: TextStyle(fontSize: 13),
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.white,
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white),
                    tabs: [
                      Tab(
                        text: "🍿 Coming Soon",
                      ),
                      Tab(
                        text: "👀 Everyones Watching",
                      )
                    ]),
              ),
              preferredSize: Size.fromHeight(100)),
          body: TabBarView(children: [_TabbarWidgets1(), _TabbarWidgets2()])),
    );
  }
}

_TabbarWidgets1() {
  return BlocBuilder<ComingsoonBloc, ComingsoonState>(
    builder: (context, state) {
      if (state.isloading == true) {
        return Center(
          child: CircularProgressIndicator(
            color: Colors.white,
          ),
        );
      } else if (state.iserror == true) {
        return Center(
          child: Text("Error 404"),
        );
      } else if (state.comingsoon.isEmpty) {
        return Center(
          child: Text("No Data Found"),
        );
      } else {
        return ListView.builder(
          itemBuilder: (context, index) {
            dategetdate() {
              return DateFormat.MMMM().format(
                  DateTime.parse(state.comingsoon[index].date.toString()));
            }

            getday() {
              return DateFormat('EEEE').format(
                  DateTime.parse(state.comingsoon[index].date.toString()));
            }

            return _ComingSoon(
              datenum:
                  '${state.comingsoon[index].date!.replaceRange(0, 8, '')}',
              Currentday: getday(),
              posterpath: "${state.comingsoon[index].backdropath}",
              overiew: "${state.comingsoon[index].overview}",
              title: "${state.comingsoon[index].title}",
              date: "${dategetdate()}",
            );
          },
          itemCount: 20,
        );
      }
    },
  );
}

_TabbarWidgets2() {
  return BlocBuilder<EveryonesBloc, EveryonesState>(
    builder: (context, state) {
      return ListView.builder(
        itemBuilder: (context, index) {
          return _EveryOnesWatching(
            title: state.Everyones[index].title,
            overview: state.Everyones[index].overview,
            backdropath: state.Everyones[index].backdropath,
          );
        },
        itemCount: 20,
      );
    },
  );
}

class _EveryOnesWatching extends StatelessWidget {
  final String title;
  final String overview;
  final String backdropath;
  const _EveryOnesWatching(
      {super.key,
      required this.title,
      required this.overview,
      required this.backdropath});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Kheight10,
          Text(
            title,
            style: GoogleFonts.actor(fontSize: 25),
          ),
          Kheight10,
          Text(
            overview,
            style: GoogleFonts.actor(
                color: Colors.white.withOpacity(0.7), fontSize: 15),
          ),
          Kheight60,
          Stack(
            children: [
              HotandnewImagecarriers(
                  size: size, imagee: "${APIimageURL}${backdropath}"),
              Positioned(
                  top: 150,
                  left: 280,
                  child: VolumeOffWidget(
                    data: Icons.volume_off,
                    ontap: () {},
                  ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Iconwidgets(
                ontap: () {},
                Icons: Icons.share,
                title: "Share",
              ),
              Iconwidgets(
                ontap: () {},
                Icons: Icons.add,
                title: "My List",
              ),
              Iconwidgets(
                ontap: () {},
                Icons: Icons.play_arrow,
                title: "Play",
              ),
            ],
          )
        ],
      ),
    );
  }
}

class _ComingSoon extends StatelessWidget {
  final String Currentday;
  final String title;
  final String datenum;
  final String posterpath;
  final String date;
  final String overiew;
  const _ComingSoon(
      {required this.title,
      required this.date,
      required this.overiew,
      required this.posterpath,
      required this.Currentday,
      required this.datenum});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10, top: 10),
              child: Column(
                children: [
                  Text(
                    date,
                    style: GoogleFonts.actor(fontSize: 15),
                  ),
                  Text(
                    datenum,
                    style: GoogleFonts.actor(fontSize: 20),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HotandnewImagecarriers(
                    size: size,
                    imagee: "${APIimageURL}${posterpath}",
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          title,
                          style: GoogleFonts.actor(fontSize: 30),
                        ),
                      ),
                      Row(
                        children: [
                          Iconwidgets(
                            ontap: () {},
                            Icons: Icons.timer_outlined,
                            title: "Remind me",
                          ),
                          Iconwidgets(
                            ontap: () {},
                            Icons: Icons.info,
                            title: "Info",
                          )
                        ],
                      )
                    ],
                  ),
                  Kheight10,
                  Text("Coming On ${Currentday}"),
                  Kheight10,
                  Text(
                    title,
                    style: GoogleFonts.actor(fontSize: 20),
                  ),
                  Kheight10,
                  Text(
                    overiew,
                    style:
                        GoogleFonts.actor(color: Colors.white.withOpacity(0.7)),
                  )
                ],
              ),
            )
          ],
        ),
        SizedBox(
          height: 100,
        )
      ],
    );
  }
}

class Iconwidgets extends StatelessWidget {
  const Iconwidgets({
    super.key,
    required this.Icons,
    this.title,
    required this.ontap,
  });
  final IconData Icons;
  final title;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
            onPressed: ontap,
            icon: Icon(
              Icons,
              size: 20,
            )),
        Text(title, style: TextStyle(fontSize: 10))
      ],
    );
  }
}

class HotandnewImagecarriers extends StatelessWidget {
  const HotandnewImagecarriers({
    super.key,
    required this.size,
    required this.imagee,
  });

  final String imagee;

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height / 3.5,
      decoration: BoxDecoration(
          borderRadius: Radiuss,
          image: DecorationImage(
              image: NetworkImage(imagee),
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high)),
    );
  }
}
