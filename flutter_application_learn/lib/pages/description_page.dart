import 'package:flutter/material.dart';
import 'package:flutter_application_learn/core/constants.dart';

import '../class/item_class.dart';

class DescriptionPage extends StatelessWidget {
  const DescriptionPage({
    super.key,
    required this.box,
  });
  final ItemClass box;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(box.title),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Image.asset(box.imagePath),
          FittedBox(
            child: Text(
              box.title,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(kDouble10*2),
            child: Text(box.description),
          )
        ]),
      ),
    );
  }
}
