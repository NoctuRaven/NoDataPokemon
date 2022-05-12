import 'package:flutter/material.dart';
import '../Models/Pokemon_Models.dart';

class PokemonItemList extends StatelessWidget {
  final Pokemon _pokemon;
  final Function(Pokemon) selectPokemon;

  PokemonItemList(this._pokemon, this.selectPokemon);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectPokemon(_pokemon),
      borderRadius: BorderRadius.circular(15),
      child: Container(
        height: 30,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: _pokemon.cor,
        ),
        child: Center(
          child: Text(
            _pokemon.nome.toString(),
            style: const TextStyle(fontSize: 15),
          ),
        ),
      ),
    );
  }
}
