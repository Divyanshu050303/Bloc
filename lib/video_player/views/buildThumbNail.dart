import 'dart:io';

import 'package:flutter/material.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

class Buildthumbnail extends StatefulWidget {
  final String? filePath;
  const Buildthumbnail({super.key, this.filePath});

  @override
  State<Buildthumbnail> createState() => _BuildthumbnailState();
}

class _BuildthumbnailState extends State<Buildthumbnail> {
  String filePath = "";
  Future<void> _buildThumbNail() async {
    filePath = await VideoThumbnail.thumbnailFile(
            video: widget.filePath ?? "",
            imageFormat: ImageFormat.JPEG,
            quality: 100) ??
        "";
    print(filePath);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _buildThumbNail(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(
              child: Text("Thumbnail is not avaliable"),
            );
          } else {
            return Image.file(
              File(filePath),
            );
          }
        });
  }
}
