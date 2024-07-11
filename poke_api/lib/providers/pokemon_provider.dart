import 'package:flutter/material.dart';
import '../models/pokemon.dart';
import '../services/api_services.dart';

class PokemonProvider with ChangeNotifier {
  final ApiService _apiService = ApiService();
  List<Pokemon> _pokemonList = [];
  bool _isLoading = false;
  String _errorMessage = '';

  List<Pokemon> get pokemonList => _pokemonList;
  bool get isLoading => _isLoading;
  String get errorMessage => _errorMessage;

  Future<void> fetchPokemon() async {
    _isLoading = true;
    _errorMessage = '';
    notifyListeners();

    try {
      _pokemonList = await _apiService.fetchPokemonList();
    } catch (e) {
      _errorMessage = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
