import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_sample_01_widget/screens/text_field_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 8, top: 50, left: 8, right: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => textFieldWidget()),
                );
              },
              child: const Text('text_field_widget'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(onPressed: () {}, child: const Text('Hello2')),
            const SizedBox(height: 10),
            ElevatedButton(onPressed: () {}, child: const Text('Hello3')),
          ],
        ),
      ),
    );
  }
}
