import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_sample_01_widget/screens/designPrac1.dart';
import 'package:flutter_sample_01_widget/screens/text_field_widget.dart';
import 'package:flutter_sample_01_widget/screens/switch_widget.dart';

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
            menuBtn(context, textFieldWidget(), 'text_field_widget'),
            const SizedBox(height: 10),
            menuBtn(context, designPrac1(), 'app Design practice'),
            const SizedBox(height: 10),
            menuBtn(context, SwitchWidget(), 'switch widget'),
          ],
        ),
      ),
    );
  }

  ElevatedButton menuBtn(BuildContext vContext, Widget vPage, String vTitle){
    return ElevatedButton(
        onPressed: () {
          Navigator.push(
            vContext,
            MaterialPageRoute(builder: (context) => vPage),
          );
        },
        child: Text(vTitle)
    );
  }
}


