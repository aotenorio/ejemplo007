import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'TenoCalculator by TenoDev'),
    );
  }
}

class misobjetos {
  final titulo;
  final icono1;
  final color;

  misobjetos(this.titulo, this.icono1, this.color);
}

List<misobjetos> lo = <misobjetos>[
  misobjetos("9", Icon(Icons.person), Colors.lightBlue),
  misobjetos("8", Icon(Icons.person), Colors.lightGreen),
  misobjetos("7", Icon(Icons.person), Colors.lightBlue),
  misobjetos("6", Icon(Icons.person), Colors.lightGreen),
  misobjetos("5", Icon(Icons.person), Colors.lightBlue),
  misobjetos("4", Icon(Icons.person), Colors.lightGreen),
  misobjetos("3", Icon(Icons.person), Colors.lightBlue),
  misobjetos("2", Icon(Icons.person), Colors.lightGreen),
  misobjetos("1", Icon(Icons.person), Colors.lightBlue),
  misobjetos("0", Icon(Icons.person), Colors.lightGreen),
  misobjetos("Calcular", Icon(Icons.calculate), Colors.lightBlue),
  misobjetos("Limpiar", Icon(Icons.cleaning_services), Colors.lightGreen),
];

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: lo.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
              color: lo[index].color,
              child: ListTile(
            title: Center(
                child: index > 9
                    ? lo[index].icono1
                    : Text(
                        lo[index].titulo,
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      )),
          ));
        },
      ),
    );
  }
}
