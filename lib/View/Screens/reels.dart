// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ReelScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Reels',style: Theme.of(context).textTheme.headlineMedium,),),
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: PageView(
          scrollDirection: Axis.vertical,
          children: const [
            ReelVideo(
              videoPath: 'asset/Video/VID-20240815-WA0002.mp4',
            ),
            ReelVideo(
              videoPath: 'asset/Video/VID-20240815-WA0010.mp4',
            ),
            ReelVideo(
              videoPath: 'asset/Video/VID-20240815-WA0009.mp4',
            ),
            ReelVideo(
              videoPath: 'asset/Video/VID-20240815-WA0002.mp4',
            ),
          ],
        ),
      ),
    );
  }
}

class ReelVideo extends StatelessWidget {
  final String videoPath;

  const ReelVideo({required this.videoPath});

  @override
  Widget build(BuildContext context) {
    return VideoPlayerWidget(videoPath: videoPath);
  }
}


class VideoPlayerWidget extends StatefulWidget {
  final String videoPath;

  const VideoPlayerWidget({required this.videoPath});

  @override
  _VideoPlayerState createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayerWidget> {
  late VideoPlayerController _controller;
  bool _isPlaying = false;
  bool _isHeartShown = false;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.videoPath)
      ..initialize().then((_) {
        setState(() {});
        _controller.play();
        _isPlaying = true;
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (_isPlaying) {
            _controller.pause();
          } else {
            _controller.play();
          }
          _isPlaying = !_isPlaying;
        });
      },
      onDoubleTap: () {
        setState(() {
          _isHeartShown = true;
        });
        _timer = Timer(const Duration(milliseconds: 500), () {
          setState(() {
            _isHeartShown = false;
          });
        });
      },
      child: Stack(
        children: [
          _controller.value.isInitialized
              ? AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: VideoPlayer(_controller),
          )
              : Container(),
          _isHeartShown
              ? const Center(
            child: Icon(
              CupertinoIcons.heart_fill,
              color: Colors.white,
              size: 100,
            ),
          )
              : Container(),
          const Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 8,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(25, 20, 15, 20),
                              child: CircleAvatar(
                                backgroundColor: Colors.blue,
                                radius: 16,
                                child: Icon(Icons.person),
                              ),
                            ),
                            Text(
                              "kunj1810",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            "This is the very long description of the videos which has many lines This is the very long description of the videos which has many lines This is the very long description of the videos which has many lines This is the very long description of the videos which has many lines",
                            overflow: TextOverflow.ellipsis,
                            softWrap: true,
                            maxLines: 2,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(flex: 1, child: Buttons()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            CupertinoIcons.suit_heart,
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.message_outlined,
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.share,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
