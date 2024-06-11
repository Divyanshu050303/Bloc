import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:tap/photo/bloc/photo_bloc.dart';
import 'package:tap/photo/bloc/photo_event.dart';
import 'package:tap/photo/bloc/photo_state.dart';
import 'package:tap/photo/model/photoModel.dart';

class Photodisplay extends StatefulWidget {
  const Photodisplay({super.key});

  @override
  State<Photodisplay> createState() => _PhotodisplayState();
}

class _PhotodisplayState extends State<Photodisplay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<PhotoBloc>().add(LoadPhotoEvent());
        },
        tooltip: "get data",
        child: const Icon(Icons.download),
      ),
      body: BlocBuilder<PhotoBloc, PhotoState>(
        builder: (context, state) {
          if (state is PhotoLoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is PhotoErrorState) {
            return Center(
              child: Text(state.error),
            );
          }
          if (state is PhotoSuccessState) {
            List<Photo> photoList = state.photoModel.photos;
            return photoList.isNotEmpty
                ? GridView.builder(
                    itemCount: photoList.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                          onTap: () {
                            showAboutDialog(context: context, children: [
                              Image.network(
                                photoList[index].src.original,
                                fit: BoxFit.fill,
                              )
                            ]);
                          },
                          child: Card(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                photoList[index].src.original,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ));
                    },
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            crossAxisCount: 2),
                  )
                : const Center(
                    child: Text("No Data found"),
                  );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
