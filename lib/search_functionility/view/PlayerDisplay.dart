import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tap/search_functionility/cubit/cubit/player_search_cubit.dart';
import 'package:tap/search_functionility/view/widget/build_player_list.dart';

class Playerdisplay extends StatelessWidget {
  const Playerdisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search Player"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                context.read<PlayerSearchCubit>().FilterPlayer(value);
              },
              decoration: const InputDecoration(
                  labelText: 'Search', suffixIcon: Icon(Icons.search)),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(child: BlocBuilder<PlayerSearchCubit, PlayerSearchState>(
              builder: (context, state) {
                if (state is PlayerSearchInitialState) {
                  return buildPlayerList(palyerlist: state.players);
                } else if (state is PlayerSearchFilteredState) {
                  return buildPlayerList(palyerlist: state.filterdPlayers);
                } else {
                  return Container();
                }
              },
            ))
          ],
        ),
      ),
    );
  }
}
