import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/pokemon.dart';

class ApiService {
  // Variables
  final String baseUrl = "https://pokeapi.co/api/v2";

  Future<List<Pokemon>> fetchPokemonList() async {
    final response = await http.get(Uri.parse('$baseUrl/pokemon?limit=151'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final List results = data['results'];

      // Obtener detalles de cada Pokémon concurrentemente
      List<Future<Pokemon>> pokemonFutures = results.map((result) async {
        final detailResponse = await http.get(Uri.parse(result['url']));
        if (detailResponse.statusCode == 200) {
          final detailData = json.decode(detailResponse.body);
          return Pokemon.fromJson(detailData);
        } else {
          throw Exception('Error al obtener detalles del Pokémon');
        }
      }).toList();

      return await Future.wait(pokemonFutures);
    } else {
      throw Exception('Error al obtener la lista de Pokémon');
    }
  }
}
