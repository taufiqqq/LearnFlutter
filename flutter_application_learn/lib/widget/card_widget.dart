import 'package:flutter/material.dart';
import 'package:flutter_application_learn/core/constants.dart';
import 'package:flutter_application_learn/pages/description_page.dart';
import '../class/item_class.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.box,
  });

  final ItemClass box;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const DescriptionPage();
            },
          ),
        );
      },
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(kDouble10),
          child: Column(
            children: [
              Image.asset(
                box.imagePath,
                width: 200,
              ),
              Text(
                box.title,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text('Very elegant'),
            ],
          ),
        ),
      ),
    );
  }
}
