import 'package:flutter/material.dart';
import 'package:flutter_application_learn/core/constants.dart';
import 'package:flutter_application_learn/widget/card_widget.dart';
import 'package:flutter_application_learn/widget_tree.dart';

import '../class/item_class.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terapi'),
        shadowColor: Colors.lightBlue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CardWidget(
              box: ItemClass(
                title: 'Main Light',
                imagePath: 'images/light.png',
                description: lightString,
              ),
            ),
            const SizedBox(height: kDouble10),
            Row(
              children: [
                Expanded(
                  child: CardWidget(
                    box: ItemClass(
                      title: 'Child Dark',
                      imagePath: 'images/dark.png',
                      description: darkString,
                    ),
                  ),
                ),
                Expanded(
                  child: CardWidget(
                    box: ItemClass(
                      title: 'Child Light',
                      imagePath: 'images/light.png',
                      description: lightString,
                    ),
                  ),
                ),
                Expanded(
                  child: CardWidget(
                    box: ItemClass(
                      title: 'Child Dark',
                      imagePath: 'images/dark.png',
                      description: darkString,
                    ),
                  ),
                ),
                Expanded(
                  child: CardWidget(
                    box: ItemClass(
                      title: 'Child Light',
                      imagePath: 'images/light.png',
                      description: lightString,
                    ),
                  ),
                ),
              ],
            ),
            Card(
              child: Container(
                padding: const EdgeInsets.all(8.0),
                height: 600,
                child: Image.asset('images/dark.png'),
              ),
            ),
            Center(
              child: Text(
                "Count: $count",
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            count++;
          });
        },
      ),
    );
  }
}
