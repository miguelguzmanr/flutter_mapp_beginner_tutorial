import 'package:flutter/material.dart';

class LearnFlutter extends StatefulWidget {
  const LearnFlutter({super.key});

  @override
  State<LearnFlutter> createState() => _LearnFlutterState();
}

class _LearnFlutterState extends State<LearnFlutter> {
  bool toggle = true;
  bool check = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Flutter'),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.info_outline),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(8.0),
            child: Image.asset('images/flutter-logo.png'),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: toggle ? Colors.indigo : Colors.grey,
            ),
            child: const Text('Elevated Button'),
          ),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              foregroundColor: check ? Colors.indigo : Colors.grey,
            ),
            child: const Text('Outlined Button'),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Text Button'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.zoom_in),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.zoom_out),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.fit_screen_outlined),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.fullscreen),
              ),
            ],
          ),
          Switch(
            value: toggle,
            onChanged: (value) {
              setState(() {
                toggle = value;
              });
            },
          ),
          Checkbox(
            value: check,
            onChanged: (value) {
              setState(() {
                check = value ?? false;
              });
            },
          ),
        ],
      ),
    );
  }
}
