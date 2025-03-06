// Creation de la fonction principale
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//cretation du widget (MyApp)
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // Creation de son override
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My First App",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

// creation de la class HomePage
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  // creation et implementation de son widget
  @override
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
        leading: Icon(Icons.account_circle),
        actions: [
          Icon(Icons.add),
          Icon(Icons.remove),
        ],
        elevation: 10.0,
        centerTitle: true,
      ),
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                elevation: 20.0,
                child: SizedBox(
                    width: MediaQuery.of(context).size.width / 1.5,
                    height: 250.0,
                    child: Image.asset(
                      'images/marketing.jpg',
                      fit: BoxFit.fill,
                    )),
              ),
              Text(
                "Ceci est une publicité pour les cours de flutter",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28.0,
                  fontStyle: FontStyle.italic,
                  
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.5,
                    height: 250.0,
                
              )
            ],
          ),
        ),
      ),
    );
  }
}
