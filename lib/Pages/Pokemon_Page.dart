import 'package:flutter/material.dart';
import 'package:nodatapokemon/Components/Pokemon_Card_Component.dart';
import 'package:nodatapokemon/Components/Pokemon_GridView_Component.dart';
import '../Data/Pokemon_Data.dart';
import '../Models/Pokemon_Models.dart';

class PokemonPage extends StatefulWidget {
  Pokemon? _pokemon = pokemonList[0];

  @override
  State<PokemonPage> createState() => _PokemonPageState();
}

class _PokemonPageState extends State<PokemonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.grey[400],
        child: SingleChildScrollView(
          child: Column(
            children: [PokemonCardComponent(widget._pokemon!), PokemonGridView(selectPokemonList)],
          ),
        ),
      ),
    );
  }

  void selectPokemonList(Pokemon poke) {
    setState(() {
      widget._pokemon = poke;
    });
  }
}
