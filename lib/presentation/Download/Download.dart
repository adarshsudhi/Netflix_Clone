import 'dart:io';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:netflix/Application/Download/download_bloc.dart';
import 'package:netflix/Application/Firebase/Getcurretnuser/getcurrentuser_bloc.dart';
import 'package:netflix/infrastructure/FirebaseServices/Authservices.dart';
import 'package:netflix/core/Colors/Colors.dart';
import 'package:netflix/core/Colors/Spaces.dart';
import 'package:netflix/core/Colors/Strings.dart';
import 'package:netflix/presentation/Download/UploadVideo/UploadvShortVideo.dart';
import 'package:netflix/presentation/Search/widgets/TitleForwidgets.dart';
import 'package:netflix/presentation/Widgets/appBar.dart';

import '../../infrastructure/API/Api_key.dart';

class Downloadscreen extends StatelessWidget {
  Downloadscreen({super.key});

  getDownload(BuildContext context) async {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      return BlocProvider.of<DownloadBloc>(context)
          .add(DownloadEvent.getDownloadImage());
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    getDownload(context);

    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: AppBar(
              title: Text(
                "Downloads",
                style: GoogleFonts.actor(),
              ),
              actions: [
                TextButton.icon(
                    onPressed: () async {
                      await Authservice().SignOutuser(context);
                    },
                    icon: Icon(
                      Icons.logout,
                      color: Colors.red,
                    ),
                    label: Text(
                      "Sign Out",
                      style: GoogleFonts.actor(color: Colors.red),
                    ))
              ],
            )),
        body: BlocBuilder<DownloadBloc, DownloadState>(
          builder: (context, state) {
            if (state.isloading == true) {
              return Center(
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              );
            } else if (state.downloads.isEmpty) {
              return Center(
                child: Text("No Data"),
              );
            } else {
              return ListView(
                children: [
                  const Section1(),
                  SizedBox(
                    child: Container(
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CircleAvatar(
                            radius: size.width * 0.36,
                            backgroundColor: Colors.grey.withOpacity(0.5),
                          ),
                          StackImages(
                            Margin: EdgeInsets.only(left: 150, bottom: 30),
                            size: size,
                            URL:
                                "${APIimageURL}${state.downloads[2].posterPath}",
                            Angle: 25,
                          ),
                          StackImages(
                            Margin: EdgeInsets.only(right: 150, bottom: 30),
                            size: size,
                            URL:
                                "${APIimageURL}${state.downloads[1].posterPath}",
                            Angle: -25,
                          ),
                          StackImages(
                              size: size / 0.92,
                              URL:
                                  "${APIimageURL}${state.downloads[0].posterPath}",
                              Angle: 0,
                              Margin: EdgeInsets.only(top: 50, bottom: 25))
                        ],
                      ),
                    ),
                  ),
                  const Section3()
                ],
              );
            }
          },
        ));
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});
  GetVideo(ImageSource source) async {
    XFile? file = await ImagePicker().pickVideo(source: source);
    return file;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Kheight60,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            onPressed: () async {
              XFile Getfile = await GetVideo(ImageSource.gallery);
              if (Getfile != null) {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        UplaodShortVidoo(Videofile: File(Getfile.path))));
              }
            },
            child: Text(
              "Upload a short",
              style: GoogleFonts.actor(color: Colors.white),
            ),
            color: kButtonColor,
            minWidth: double.infinity,
            height: 50,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SeeWhatYoucan(
          ontap: () async {
            var user = await Firestore.collection('videos').get();
            print(user.docs.length);
          },
          title: "See What You Can Download",
        )
      ],
    );
  }
}

class SeeWhatYoucan extends StatelessWidget {
  final String title;
  final VoidCallback ontap;
  const SeeWhatYoucan({
    super.key,
    required this.title,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        onPressed: ontap,
        child: Text(
          title,
          style: TextStyle(color: KButtonColorBlack),
        ),
        color: KbuttonColorWhite,
        minWidth: double.infinity,
        height: 50,
      ),
    );
  }
}

class Section1 extends StatelessWidget {
  const Section1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Kheight10,
        Row(
          children: [
            Icon(
              Icons.settings,
              size: 30,
            ),
            SizedBox(
              width: 10,
            ),
            Text("Smart Downloads", style: GoogleFonts.actor())
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Introducing Downloads For You",
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "We will download a personalised selection of movies and shows for you , so there is always something to watch on your device ",
          style: TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 15),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class StackImages extends StatelessWidget {
  const StackImages({
    super.key,
    required this.size,
    required this.URL,
    required this.Angle,
    required this.Margin,
  });

  final Size size;
  final double Angle;
  final String URL;
  final EdgeInsetsGeometry Margin;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: Angle * pi / 180,
      child: Container(
        margin: Margin,
        width: size.width / 2.5,
        height: size.height / 4.3,
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: NetworkImage(URL),
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}
