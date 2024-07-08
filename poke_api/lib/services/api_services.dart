import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/pokemon.dart';

class ApiService {
  // Variables
  final String baseUrl = "https://pokeapi.co/api/v2";

  Future<List<Pokemon>> fetchPokemonList() async {
    final respose = await http.get(Uri.parse('$baseUrl/pokemon?limit=25'));

    if (respose.statusCode == 200) {
      final data = json.decode(respose.body);
      final List results = data['results'];
      return results
          .map(
            (e) => Pokemon.fromJson(e),
          )
          .toList();
    } else {
      throw Exception('Error al obtener al Pokemon');
    }
  }
}
