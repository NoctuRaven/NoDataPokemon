import 'package:flutter/material.dart';
import 'package:nodatapokemon/Pages/Pokemon_Page.dart';
import 'Pages/pokemon_List.dart';
import 'utils/app_routes.dart';

class PokemonNoDataApp extends StatelessWidget {
  const PokemonNoDataApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: PokemonList(),
      routes: {Routes.pokemonCard: (context) => PokemonPage()},
      debugShowCheckedModeBanner: false,
    );
  }
}
