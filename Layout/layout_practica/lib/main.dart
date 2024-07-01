import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final String title = "Card Examples";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: const Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Elemento 1
              ImageSection(image: "images/lake.jpeg"),
              TitleSection(name: "Panecillo", location: "Quito, Ecuador"),
              ButtonSection(),
              TextSection(
                description:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non purus sed ex pellentesque luctus. Nulla in egestas urna. Quisque sodales, ligula a fermentum semper, eros justo tincidunt libero, a tristique tellus elit ac lacus. Curabitur iaculis, urna in sagittis ultricies, justo sapien volutpat mauris, nec rutrum ante nisl ac est. Suspendisse pretium, quam id elementum facilisis, augue erat suscipit magna, ut sodales sapien dui ut arcu. Vestibulum eu accumsan nulla. Duis sagittis neque ut ligula rutrum posuere. Mauris purus ex, eleifend et massa ut, gravida condimentum tellus. Donec scelerisque nec nunc mattis vulputate. Sed justo lectus, sagittis vitae dictum in, maximus et felis. Fusce vitae condimentum sem, fringilla iaculis mi. Quisque molestie quam felis, posuere euismod sapien auctor sed. Curabitur feugiat volutpat leo id rutrum.",
              ),

              // Elemento 2
              ImageSection(image: "images/lake.jpeg"),
              TitleSection(
                  name: "La entrada de la 8", location: "Guayaquil, Ecuador"),
              ButtonSection(),
              TextSection(
                description:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non purus sed ex pellentesque luctus. Nulla in egestas urna. Quisque sodales, ligula a fermentum semper, eros justo tincidunt libero, a tristique tellus elit ac lacus. Curabitur iaculis, urna in sagittis ultricies, justo sapien volutpat mauris, nec rutrum ante nisl ac est. Suspendisse pretium, quam id elementum facilisis, augue erat suscipit magna, ut sodales sapien dui ut arcu. Vestibulum eu accumsan nulla. Duis sagittis neque ut ligula rutrum posuere. Mauris purus ex, eleifend et massa ut, gravida condimentum tellus. Donec scelerisque nec nunc mattis vulputate. Sed justo lectus, sagittis vitae dictum in, maximus et felis. Fusce vitae condimentum sem, fringilla iaculis mi. Quisque molestie quam felis, posuere euismod sapien auctor sed. Curabitur feugiat volutpat leo id rutrum.",
              ),

              // Elemento 3
              ImageSection(image: "images/lake.jpeg"),
              TitleSection(
                  name: "Basilica del Voto Nacional",
                  location: "Quito, Ecuador"),
              ButtonSection(),
              TextSection(
                description:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non purus sed ex pellentesque luctus. Nulla in egestas urna. Quisque sodales, ligula a fermentum semper, eros justo tincidunt libero, a tristique tellus elit ac lacus. Curabitur iaculis, urna in sagittis ultricies, justo sapien volutpat mauris, nec rutrum ante nisl ac est. Suspendisse pretium, quam id elementum facilisis, augue erat suscipit magna, ut sodales sapien dui ut arcu. Vestibulum eu accumsan nulla. Duis sagittis neque ut ligula rutrum posuere. Mauris purus ex, eleifend et massa ut, gravida condimentum tellus. Donec scelerisque nec nunc mattis vulputate. Sed justo lectus, sagittis vitae dictum in, maximus et felis. Fusce vitae condimentum sem, fringilla iaculis mi. Quisque molestie quam felis, posuere euismod sapien auctor sed. Curabitur feugiat volutpat leo id rutrum.",
              ),

              // Elemento 4
              ImageSection(image: "images/lake.jpeg"),
              TitleSection(
                  name: "Parque Nacional Cajas", location: "Azuay, Ecuador"),
              ButtonSection(),
              TextSection(
                description:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non purus sed ex pellentesque luctus. Nulla in egestas urna. Quisque sodales, ligula a fermentum semper, eros justo tincidunt libero, a tristique tellus elit ac lacus. Curabitur iaculis, urna in sagittis ultricies, justo sapien volutpat mauris, nec rutrum ante nisl ac est. Suspendisse pretium, quam id elementum facilisis, augue erat suscipit magna, ut sodales sapien dui ut arcu. Vestibulum eu accumsan nulla. Duis sagittis neque ut ligula rutrum posuere. Mauris purus ex, eleifend et massa ut, gravida condimentum tellus. Donec scelerisque nec nunc mattis vulputate. Sed justo lectus, sagittis vitae dictum in, maximus et felis. Fusce vitae condimentum sem, fringilla iaculis mi. Quisque molestie quam felis, posuere euismod sapien auctor sed. Curabitur feugiat volutpat leo id rutrum.",
              ),

              // Elemento 5
              ImageSection(image: "images/lake.jpeg"),
              TitleSection(name: "Chimborazo", location: "Chimborazo, Ecuador"),
              ButtonSection(),
              TextSection(
                description:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non purus sed ex pellentesque luctus. Nulla in egestas urna. Quisque sodales, ligula a fermentum semper, eros justo tincidunt libero, a tristique tellus elit ac lacus. Curabitur iaculis, urna in sagittis ultricies, justo sapien volutpat mauris, nec rutrum ante nisl ac est. Suspendisse pretium, quam id elementum facilisis, augue erat suscipit magna, ut sodales sapien dui ut arcu. Vestibulum eu accumsan nulla. Duis sagittis neque ut ligula rutrum posuere. Mauris purus ex, eleifend et massa ut, gravida condimentum tellus. Donec scelerisque nec nunc mattis vulputate. Sed justo lectus, sagittis vitae dictum in, maximus et felis. Fusce vitae condimentum sem, fringilla iaculis mi. Quisque molestie quam felis, posuere euismod sapien auctor sed. Curabitur feugiat volutpat leo id rutrum.",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({super.key, required this.name, required this.location});

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Text(location, style: TextStyle(color: Colors.grey[500]))
            ],
          )),
          Icon(
            Icons.favorite,
            color: Colors.red[500],
          ),
          const SizedBox(
            width: 10,
          ),
          const Text('41')
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(
            color: color,
            icon: Icons.call,
            label: 'CALL',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.near_me,
            label: 'ROUTE',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.share,
            label: 'SHARE',
          ),
        ],
      ),
    );
  }
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        description,
        softWrap: true,
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 600,
      height: 240,
      fit: BoxFit.cover,
    );
  }
}
