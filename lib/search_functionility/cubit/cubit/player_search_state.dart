part of 'player_search_cubit.dart';

final List<Map<String, dynamic>> allPlayer = [
  {"name": "Rohit Sharma", "Country": "India"},
  {"name": "Virat Kholi", "Country": "India"},
  {"name": "Glenn Maxwell", "Country": "Australia"},
  {"name": "Martin Guptill", "Country": "New Zealand"},
  {"name": "Trent Boult", "Country": "New Zealand"},
  {"name": "David Miller", "Country": "South Africa"},
  {"name": "Chris Gayle", "Country": "West Indies"},
  {"name": "Jsaon Holder", "Country": "West Indies"},
];

sealed class PlayerSearchState {}

final class PlayerSearchInitialState extends PlayerSearchState {
  final List<Map<String, dynamic>> players;
  PlayerSearchInitialState(this.players);
}

final class PlayerSearchFilteredState extends PlayerSearchState {
  final List<Map<String, dynamic>> filterdPlayers;
  PlayerSearchFilteredState(this.filterdPlayers);
}
