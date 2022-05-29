import 'package:flutter/material.dart';
import '../Models/Pokemon_Models.dart';

class PokemonCardComponent extends StatelessWidget {
  final Pokemon _pokemon;

  PokemonCardComponent(this._pokemon);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 580,
          margin: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(15),
                width: MediaQuery.of(context).size.width,
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
                  color: _pokemon.cor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _pokemon.nome.toString(),
                          style: const TextStyle(fontSize: 20),
                        ),
                        Container(
                          padding: const EdgeInsets.all(3),
                          margin: const EdgeInsets.only(top: 5.0),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: _pokemon.cor2),
                          child: Text(_pokemon.tipo.toString()),
                        )
                      ],
                    ),
                    Text('#${_pokemon.id}')
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(40),
                margin: const EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Status',
                          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
                        ),
                        Container(
                          width: 120,
                          child: const Divider(
                            thickness: 1.5,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'HP:${_pokemon.hp}',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Container(
                          width: 120,
                          child: const Divider(
                            thickness: 0.5,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Ataque:${_pokemon.ataque}',
                          style: const TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Container(
                          width: 120,
                          child: const Divider(
                            thickness: 0.5,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Defesa:${_pokemon.defesa}',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Container(
                          width: 120,
                          child: const Divider(
                            thickness: 0.5,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Velocidade:${_pokemon.velocidade}',
                          style: const TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Container(
                          width: 120,
                          child: const Divider(
                            thickness: 0.5,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Total:${_pokemon.total}',
                          style: const TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Container(
                          width: 120,
                          child: const Divider(
                            thickness: 0.5,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Habilidades', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18)),
                        Container(
                          width: 120,
                          child: const Divider(
                            thickness: 1.5,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          '${_pokemon.hab1}',
                          style: const TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Container(
                          width: 120,
                          child: const Divider(
                            thickness: 0.5,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          '${_pokemon.hab2}',
                          style: const TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Container(
                          width: 120,
                          child: const Divider(
                            thickness: 0.5,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 30),
          child: Center(
            child: Image.asset(
              _pokemon.imagem.toString(),
              width: 300,
              height: 300,
            ),
          ),
        )
      ],
    );
  }
}
