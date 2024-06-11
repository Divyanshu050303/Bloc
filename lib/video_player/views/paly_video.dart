import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class PalyVideo extends StatefulWidget {
  final String? videoUrl;
  const PalyVideo({super.key, this.videoUrl});

  @override
  State<PalyVideo> createState() => _PalyVideoState();
}

class _PalyVideoState extends State<PalyVideo> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;
  @override
  void initState() {
     
    super.initState();
    _controller =
        VideoPlayerController.networkUrl(Uri.parse(widget.videoUrl ?? ""));
    _initializeVideoPlayerFuture = _controller.initialize().then((_) {
      setState(() {});
    });
    _controller.play();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Video Player"),
      ),
      body: FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (_controller.value.isPlaying) {
              _controller.pause();
            } else {
              _controller.play();
            }
          });
        },
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
