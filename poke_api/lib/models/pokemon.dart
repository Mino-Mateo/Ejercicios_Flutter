class Pokemon {
  // Variables
  final String name;
  final String url;
  final String imagePath;

  // Requerimiento
  Pokemon({required this.name, required this.url, required this.imagePath});

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    final String name = json['name'] ?? 'Unknown';
    final String url = json['url'] ?? 'Unknown';
    final String imagePath = json['sprites']['front_default'] ?? 'Unknown';

    return Pokemon(
      name: name,
      url: url,
      imagePath: imagePath,
    );
  }
}
