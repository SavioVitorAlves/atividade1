import 'package:flutter/material.dart';
import 'buttons.dart';
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

  int _counter = 0;
  String _resposnse = 'Adicione Numeros!';

  void _incrementCounter() {
    if(_counter == 20){
      setState(() {
        _resposnse = 'Limite Maximo!';
      });
    }else{
      setState(() {

        _counter++;
      });
    }
  }
  void _decrementCounter() {
    if(_counter < 1){
      setState(() {
        _counter = 0;
      });
    }else{
      setState(() {
        _resposnse = 'Adicione Numeros!';
        _counter--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
        Positioned.fill(
          child: Image.asset(
            'assets/imgs/fundo.jpeg',
            fit: BoxFit.cover, // Faz a imagem cobrir todo o fundo
          ),
        ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  _resposnse,
                  style: TextStyle(fontSize: 25,color: Colors.white),
                ),
                Text(
                  '$_counter',
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                  ),
                ),
                Buttons(increment: _incrementCounter, decremente: _decrementCounter, ),
              ],
            ),
          ),
        ]
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
