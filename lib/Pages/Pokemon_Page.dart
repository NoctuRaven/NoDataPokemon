import 'package:flutter/material.dart';
import 'package:nodatapokemon/Components/Pokemon_Card_Component.dart';
import '../Models/Pokemon_Models.dart';

class PokemonPage extends StatefulWidget {
  Pokemon? _pokemon;

  @override
  State<PokemonPage> createState() => _PokemonPageState();
}

class _PokemonPageState extends State<PokemonPage> {
  @override
  Widget build(BuildContext context) {
    widget._pokemon = ModalRoute.of(context)!.settings.arguments as Pokemon;
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.grey[400],
        child: SingleChildScrollView(
          child: PokemonCardComponent(widget._pokemon!),
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
