import 'package:flutter/material.dart';
import 'package:nodatapokemon/Pages/Pokemon_Page.dart';

class PokemonNoDataApp extends StatelessWidget {
  const PokemonNoDataApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: PokemonPage(),
    );
  }
}
