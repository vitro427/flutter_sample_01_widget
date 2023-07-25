import 'package:flutter/material.dart';

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
      home: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(onPressed: (){}, child: const Text('Hello')),
            const SizedBox(height: 10),
            ElevatedButton(onPressed: (){}, child: const Text('Hello2')),
            const SizedBox(height: 10),
            ElevatedButton(onPressed: (){}, child: const Text('Hello3')),
          ],
        ),
      ),
      ),
    );
  }
}
