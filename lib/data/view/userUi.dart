import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tap/data/bloc/user_bloc.dart';
import 'package:tap/data/bloc/user_event.dart';
import 'package:tap/data/bloc/user_state.dart';
import 'package:tap/data/model/user_model.dart';

class UserDetailUi extends StatelessWidget {
  const UserDetailUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<UserBloc>().add(LoadUserEvent());
        },
        child: const Icon(Icons.refresh),
      ),
      body: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          if (state is UserLoadingState) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state is UserErrorState) {
            return Center(
              child: Text("Something went worng ${state.error}"),
            );
          }
          if (state is UserSuccessState) {
            List<Datum> userList = state.userModel.data;
            return userList.isNotEmpty
                ? ListView.builder(
                    itemCount: userList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8),
                        child: Card(
                          child: ListTile(
                            title: Text(
                                "${userList[index].firstName} ${userList[index].lastName} "),
                            subtitle: Text(userList[index].email),
                            leading: CircleAvatar(
                              backgroundImage:
                                  NetworkImage(userList[index].avatar),
                            ),
                          ),
                        ),
                      );
                    })
                : const Center(
                    child: Text("Data Not Found"),
                  );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
