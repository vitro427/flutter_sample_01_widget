import 'package:flutter/material.dart';
import 'package:flutter_sample_01_widget/common/common_widget.dart';

class designPrac1 extends StatelessWidget{

  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top:50, right: 12,left:12, bottom: 8),
        child: Column(
          children: [
            basicTextField(),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(onPressed: (){}, child: Text("All", style: basicTextStyle()), ),
                  TextButton(onPressed: (){}, child: Text("Doctors", style: basicTextStyle()),),
                  TextButton(onPressed: (){}, child: Text("Faclities", style: basicTextStyle()),),
                  TextButton(onPressed: (){}, child: Text("Drugs", style: basicTextStyle()),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}