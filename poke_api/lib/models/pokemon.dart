class Pokemon {
  // Variables
  final String name;
  final String url;
  final String sprites;

  // Requerimiento
  Pokemon({required this.name, required this.url, required this.sprites});

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    return Pokemon(name: json['name'], url: json['url'], sprites: 'sprites');
  }
}
