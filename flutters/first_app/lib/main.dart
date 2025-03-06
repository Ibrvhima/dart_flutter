import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Déclaration de la classe MyApp
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkMode = false;

  // Fonction pour changer le thème
  void _toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My first App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
      home: MyHomePage(
        title: "My First App",
        toggleTheme: _toggleTheme, // Passer la fonction à MyHomePage
        isDarkMode: isDarkMode, // Passer l'état du mode sombre à MyHomePage
      ),
    );
  }
}

// Création de la classe MyHomePage
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title, required this.toggleTheme, required this.isDarkMode});
  final String title;
  final VoidCallback toggleTheme;
  final bool isDarkMode; // Ajouter l'état du mode sombre

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// Création de la classe _MyHomePageState
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  // Fonction pour incrémenter le compteur
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // Fonction pour décrémenter le compteur
  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  // Fonction pour réinitialiser le compteur
  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  // Construction de l'interface
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: widget.isDarkMode
                ? const Icon(Icons.wb_sunny) // Lune pour mode sombre
                : const Icon(Icons.nightlight_round), // Soleil pour mode clair
            onPressed: widget.toggleTheme, // Appeler la fonction pour changer le thème
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'COMPTEUR:',
              style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            AnimatedDefaultTextStyle(
              duration: const Duration(milliseconds: 300),
              style: TextStyle(
                fontSize: _counter * 2 + 20,
                fontWeight: FontWeight.bold,
                color: Colors.lightBlue,
              ),
              child: Text("$_counter"),
            ),
            Text(_counter == 10 ? "Bravo 🎉 Vous avez atteint 10 clicks" : ""),
            const SizedBox(height: 20), // Espacement
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: _incrementCounter,
                  tooltip: 'Incrémenter',
                  child: const Icon(Icons.add),
                ),
                const SizedBox(width: 20), // Espacement entre les boutons
                FloatingActionButton(
                  onPressed: _decrementCounter,
                  tooltip: "Décrémenter",
                  child: const Icon(Icons.remove),
                ),
              ],
            ),
            const SizedBox(width: 20),
            FloatingActionButton(
              onPressed: _resetCounter,
              tooltip: "Réinitialiser",
              child: const Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
