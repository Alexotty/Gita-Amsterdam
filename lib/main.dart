import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Amsterdam',
                style: TextStyle(color: Colors.black),
              ),
              backgroundColor: Color(0xff0a680d),
            ),
            body: Builder(builder: (context) {
              return SingleChildScrollView(
                  child: Column(children: [
                Container(
                  height: 40,
                  padding: const EdgeInsets.all(10),
                ),
                const Text(
                    'Amsterdam, capitale dei Paesi Bassi, è una delle mete turistiche più amate e acclamate del pianeta. Avrà luogo il viaggio d'
                    'istruzione delle classi dell'
                    'Istituto Volterra.'),
                Container(
                  height: 70,
                ),
                Image.network(
                    'https://www.dove-e-quando.it/site/images/illustration/oualler/pays-bas-amsterdam-9.jpg'),
                Container(
                  height: 100,
                ),
                ElevatedButton(
                    onPressed: () {
                      SnackBar luoghi = const SnackBar(
                          content: Text(
                              'Le mete del viaggio di istruzione decise sono: Casa Anne Frank, Museo van Gogh, MEMO, mulino Goyer,...'));
                      ScaffoldMessenger.of(context).showSnackBar(luoghi);
                    },
                    child: const Text('METE'))
              ]));
            })));
  }
}
