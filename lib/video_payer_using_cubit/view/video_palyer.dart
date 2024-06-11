import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tap/video_payer_using_cubit/cubit/video_player_cubit.dart';
import 'package:tap/video_player/bloc/video_bloc.dart';
import 'package:tap/video_player/bloc/video_event.dart';
import 'package:tap/video_player/bloc/video_state.dart';
import 'package:tap/video_player/model/video_model.dart';
import 'package:tap/video_player/views/buildThumbNail.dart';
import 'package:tap/video_player/views/paly_video.dart';

class VideoPalyerCubit extends StatelessWidget {
  const VideoPalyerCubit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<VideoPlayerCubit>().getVideos();
        },
        tooltip: "fetch Video",
        child: const Icon(Icons.download),
      ),
      body: BlocBuilder<VideoPlayerCubit, VideoPlayerState>(
        builder: (context, state) {
          if (state is VideoPlayerLoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is VideoPlayererrorState) {
            return Center(
              child: Text(state.error),
            );
          }
          if (state is VideoPlayerSuccessState) {
            print("Fetched success");
            List<Video> videoList = state.videoModel.videos;
            print(videoList.length);
            return videoList.isNotEmpty
                ? ListView.builder(
                    itemCount: videoList.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PalyVideo(
                                        videoUrl:
                                            videoList[index].videoFiles[0].link,
                                      )));
                        },
                        child: Card(
                          color: Colors.black,
                          margin: const EdgeInsets.all(10),
                          child: Buildthumbnail(
                            filePath: videoList[index].videoFiles[0].link,
                          ),
                        ),
                      );
                    })
                : const Center(
                    child: Text("no data found"),
                  );
          }

          return const SizedBox(
            child: Center(child: Text("divyanshu Singh")),
          );
        },
      ),
    );
  }
}
