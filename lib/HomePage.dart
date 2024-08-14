import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Styling App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Flutter Text Styling',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text('Experiment with text style',
                style: Theme.of(context).textTheme.titleMedium),
            TextButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('You clicked the button!')));
                },
                child: const Text('Click me')),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text('Welcome to'),
                SizedBox(width: 5),
                Text('Flutter',style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.normal, color: Colors.blue),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
