import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/Colors/Spaces.dart';
import 'package:netflix/presentation/Fast_laugh/widgets/VideoIcons.dart';
import 'package:netflix/presentation/Search/widgets/TitleForwidgets.dart';
import 'package:video_player/video_player.dart';

class VideoListStack extends StatefulWidget {
  final int Index;
  final String VideoURL;
  const VideoListStack(
      {super.key, required this.Index, required this.VideoURL});

  @override
  State<VideoListStack> createState() => _VideoListStackState();
}

class _VideoListStackState extends State<VideoListStack> {
  late VideoPlayerController _controller;
  bool loading = true;
  bool _isplaying = false;
  bool _ismuted = false;
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(widget.VideoURL);
    _controller.initialize().then((_) {
      setState(() {
        loading = false;
      });
    });
    _controller.play();
    _controller.setLooping(true);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          loading
              ? Center(
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        _isplaying = !_isplaying;
                        if (_isplaying) {
                          _controller.pause();
                        } else {
                          _controller.play();
                        }
                      },
                      child: AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: FittedBox(
                          fit: BoxFit.cover,
                          child: Container(
                            height: _controller.value.size.height,
                            width: _controller.value.size.width,
                            child: Center(child: VideoPlayer(_controller)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
          VolumeOffWidget(
            data: _ismuted ? Icons.volume_off : Icons.volume_up,
            ontap: () {
              setState(() {
                _ismuted = !_ismuted;
              });
              if (_ismuted) {
                _controller.setVolume(0);
              } else {
                _controller.setVolume(70);
              }
            },
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.accents[widget.Index],
                  child: Text(
                    "A",
                    style: GoogleFonts.actor(),
                  ),
                ),
                Kheight20,
                VideoIconItems(
                    ontap: () {}, Icons: Icons.emoji_emotions, Title: "Likes"),
                Kheight20,
                VideoIconItems(
                    ontap: () {}, Icons: Icons.comment, Title: "Comment"),
                Kheight20,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Transform.rotate(
                        angle: -45,
                        child: IconButton(
                            onPressed: () {}, icon: Icon(Icons.send))),
                    Text(
                      "Share",
                      style: GoogleFonts.actor(fontSize: 10),
                    )
                  ],
                ),
                Kheight20,
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class VolumeOffWidget extends StatelessWidget {
  final VoidCallback ontap;
  final IconData data;
  const VolumeOffWidget({
    super.key,
    required this.ontap,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.black.withOpacity(0.5),
            radius: 28,
            child: IconButton(
                onPressed: ontap,
                icon: Icon(
                  data,
                  size: 25,
                )),
          ),
        ));
  }
}
