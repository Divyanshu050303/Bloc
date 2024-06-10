// import 'dart:convert';

// import 'package:dio/dio.dart';
// import 'package:tap/pokemon/model/pokemon_model.dart';

// class PokemonPorvider{
//   final Dio _dio=Dio(BaseOptions(baseUrl: "https://pokeapi.co/api/v2/pokemon/"));
//   Future<PokemonModel> getPokemon() async{
// try{
// final response= await _dio.get('https://pokeapi.co/api/v2/pokemon?limit=20&offset=0');
// if(response.statusCode==200){
//   final Map<String, dynamic>data=json.decode(response.data);
//   final List<dynamic> result=data['results'];


// }

// }
// catch (e){
//   return Future.error(e.toString());
// }
//   }
// }