import 'package:flutter/material.dart';
import 'package:flutter_application_learn/core/constants.dart';

import '../class/item_class.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({
    super.key,
    required this.box,
  });
  final ItemClass box;

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  double fontSizeCustom = kDouble10 * 1.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.box.title),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.dangerous),
        ),
        actions: [
          IconButton(
            onPressed: () => {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Try Snackbar'),
                  duration: Duration(milliseconds: 1),
                  behavior: SnackBarBehavior.floating,
                ),
              ),
            },
            icon: const Icon(Icons.info),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Image.asset(widget.box.imagePath),
          const Wrap(
            spacing: 20,
            children: [
              Text('Hello'),
              Text('This'),
              Text('Is'),
              Text('An'),
              Text('Example'),
              Text('Of'),
              Text('Wrap'),
              Text('Implementation'),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(
                      8.0), // Adjust the padding value as needed
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        if (fontSizeCustom == 15) {
                          fontSizeCustom = 30;
                        } else {
                          fontSizeCustom = kDouble10 * 1.5;
                        }
                      });
                    },
                    child: Text('${widget.box.title} Click to change size'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(
                      8.0), // Adjust the padding value as needed
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text('Hello Everyone this is Taufiq'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(
                      8.0), // Adjust the padding value as needed
                  child: ElevatedButton(
                    onPressed: () {},
                    style : ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 195, 236, 255)),
                    child: const Text('Hello Everyone this is color bg', style: TextStyle(color: Colors.black)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(
                      8.0), // Adjust the padding value as needed
                  child: FilledButton(
                    onPressed: () {},
                    child: Text('Hello Everyone this is ${widget.box.title}'),
                  ),
                ),
              ],
            ),
          ),
          FittedBox(
            child: Text(
              widget.box.title,
              style: TextStyle(
                fontSize: fontSizeCustom,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(kDouble10 * 2),
            child: Text(widget.box.description),
          )
        ]),
      ),
    );
  }
}
