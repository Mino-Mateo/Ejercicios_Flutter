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
              ImageSection(image: "images/Panecillo.jpeg"),
              TitleSection(name: "Panecillo", location: "Quito, Ecuador"),
              ButtonSection(),
              TextSection(
                description:
                    "La Virgen del Panecillo es una escultura de aluminio que capta la atención desde casi cualquier parte de Quito, al estar ubicada en una de las zonas más altas de la ciudad"
                    "Además, es un mirador natural y uno de los lugares preferidos de los quiteños así como recomendado para ser visitado por los turistas, durante los feriados o Fiestas de Quito."
                    "La escultura representa a la Virgen María tal como se la describe en el libro bíblico del Apocalipsis. Es una mujer con alas, tiene una cadena que apresa a la serpiente que está bajo sus pies y que representa a la bestia."
                    "Es por ello que además de los nombres de Virgen de Quito o Virgen de Legarda, esta estatua también es llamada Virgen del Apocalipsis,Virgen Alada de Quito o la Virgen Danzante.",
              ),

              // Elemento 2
              ImageSection(image: "images/Pailon-del-Diablo.jpeg"),
              TitleSection(
                  name: "Pailon del Diablo", location: "Tungurahua , Ecuador"),
              ButtonSection(),
              TextSection(
                  description:
                      "Su nombre de el pailón del diablo nace por la forma que tiene las rocas que se encuentran bajo la cascada y si observas con detenimiento podrás ver la forma del rostro del diablo que se encuentra formado en las rocas, de ahí su nombre."
                      "El pailón del diablo es un lugar turistico que llena de orgullo a los ecuatorianos.  "),

              // Elemento 3
              ImageSection(image: "images/Basilica.jpeg"),
              TitleSection(
                  name: "Basilica del Voto Nacional",
                  location: "Quito, Ecuador"),
              ButtonSection(),
              TextSection(
                description:
                    "Esta cripta está formada por cincuenta tumbas de mármol francés para cuerpos y ciento cincuenta de ellas para cenizas, todas con lápidas que ostentan el escudo del Ecuador bañado en oro, es por esto que este lugar no puede ser visitado por los turistas si no solamente por familiares de los fallecidos."
                    "En el convento y la Basílica se guardan más de cuatro mil obras de arte de varias épocas que todavía"
                    "no han sido inventariadas. Las más conocidas son los cuadros del Sagrado Corazón de Jesús, del pintor Rafael Salas"
                    "y los anónimos de Santa Mariana de Jesús, Felipe Neri y San Francisco de Sales, comisionadas por el presidente Gabriel García Moreno para celebrar la consagración del Ecuador al corazón de Jesús.",
              ),

              // Elemento 4
              ImageSection(image: "images/Parque-nacional-Cajas.jpeg"),
              TitleSection(
                  name: "Parque Nacional Cajas", location: "Azuay, Ecuador"),
              ButtonSection(),
              TextSection(
                  description:
                      "El Parque Nacional Cajas está ubicado en la provincia de Azuay, en el sur del Ecuador, donde la cordillera de los Andes es más antigua, con menor actividad volcánica y sin los picos elevados que son tan comunes más al norte."
                      "En esta zona, la cordillera forma extensas altiplanicies de gran belleza donde se acumula agua en grandes cantidades."),

              // Elemento 5
              ImageSection(image: "images/Chimborazo.jpeg"),
              TitleSection(name: "Chimborazo", location: "Chimborazo, Ecuador"),
              ButtonSection(),
              TextSection(
                  description:
                      "El Chimborazo es un estratovolcán potencialmente activo, situado en el centro de Ecuador, en la Provincia de Chimborazo."
                      "Perteneciente a la cordillera de los Andes, específicamente a los Andes septentrionales, cuenta con una altitud de 6263,47 m s. n. m."
                      "por lo que es la montaña más alta del Ecuador y de los Andes septentrionales."),
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
