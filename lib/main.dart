import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(
                  text: "facebook",
                  icon: Icon(Icons.facebook),
                ),
                Tab(
                  text: "twiter",
                  icon: Icon(Icons.wb_twilight),
                ),
                Tab(
                  text: "instagram",
                  icon: Icon(Icons.insert_page_break_rounded),
                ),
              ],
            ),
          ),
          body: TabBarView(children: [
            Column(
              children: [
                Card(
                  child: Text("mi primer card"),
                  color: Colors.amberAccent,
                ),
                Text(lorem(paragraphs: 2, words: 60)),
                Container(
                  width: 400,
                  height: 400,
                  child: Image.asset('imagenes/persona1.jpeg'),
                )
              ],
            ),
            Column(
              children: [
                Text(lorem(paragraphs: 2, words: 60)),
                Container(
                  width: 500,
                  height: 500,
                  child: Image.asset('imagenes/persona2.jpeg'),
                )
              ],
            ),
            Text(lorem(paragraphs: 5, words: 200))
          ]),
        ));
  }
}
