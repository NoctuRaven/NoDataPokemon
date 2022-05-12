import 'package:flutter/material.dart';
import 'package:nodatapokemon/Models/Pokemon_Models.dart';
import '../Data/Pokemon_Data.dart';
import 'Pokemon_Item_List.dart';

class PokemonGridView extends StatelessWidget {
  final void Function(Pokemon) selectPokemonList;

  PokemonGridView(this.selectPokemonList);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: pokemonList.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: PokemonItemList(pokemonList[index], selectPokemonList),
            );
          }),
    );
  }
}
