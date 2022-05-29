import 'package:flutter/material.dart';
import '../Models/Pokemon_Models.dart';
import '../utils/app_routes.dart';

class PokemonItemList extends StatelessWidget {
  final Pokemon _pokemon;
  PokemonItemList(this._pokemon);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: Container(
          decoration: BoxDecoration(color: _pokemon.cor),
          child: GestureDetector(
            onTap: () => Navigator.of(context).pushNamed(Routes.pokemonCard, arguments: _pokemon),
            child: Image.asset(_pokemon.imagem.toString(), fit: BoxFit.cover),
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black38,
          title: Text(
            _pokemon.nome.toString(),
          ),
          trailing: Text(
            '#${_pokemon.id.toString()}',
            style: const TextStyle(color: Color.fromARGB(255, 196, 196, 196)),
          ),
        ),
      ),
    );
  }
}
