import 'package:tap/photo/model/photoModel.dart';

sealed class PhotoState {}

final class PhotoInitialState extends PhotoState {}

final class PhotoLoadingState extends PhotoState {}

final class PhotoErrorState extends PhotoState {
  final String error;
  PhotoErrorState(this.error);
}

final class PhotoSuccessState extends PhotoState {
  final PhotoModel photoModel;
  PhotoSuccessState(this.photoModel);
}
