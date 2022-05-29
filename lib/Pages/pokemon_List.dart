import 'package:flutter/material.dart';
import 'package:nodatapokemon/Data/Pokemon_Data.dart';
import 'package:nodatapokemon/Models/Pokemon_Models.dart';
import '../Components/Pokemon_Item_List.dart';

class PokemonList extends StatelessWidget {
  final List<Pokemon> loadPokemon = pokemonList;
  PokemonList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Pokemon List'),
      ),
      body: Container(
        color: Color.fromARGB(255, 159, 212, 255),
        child: GridView.builder(
            padding: const EdgeInsets.all(10),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: loadPokemon.length,
            itemBuilder: (ctx, index) {
              return PokemonItemList(loadPokemon[index]);
            }),
      ),
    );
  }
}
