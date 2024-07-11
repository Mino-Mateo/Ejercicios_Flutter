class Pokemon {
  // Variables
  final String name;
  final String url;
  final String imageUrl;

  // Requerimiento
  Pokemon({required this.name, required this.url, required this.imageUrl});

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    final String name = json['name'] ?? 'Unknown';
    final String url = json['url'] ?? '';

    // Verificamos que la URL no esté vacía y que tenga suficientes partes
    final List<String> urlParts = url.isNotEmpty ? url.split('/') : [];
    final String pokemonIndex =
        urlParts.length > 1 ? urlParts[urlParts.length - 2] : '0';

    final String imageUrl =
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/$pokemonIndex.png';

    return Pokemon(
      name: name,
      url: url,
      imageUrl: imageUrl,
    );
  }
}
