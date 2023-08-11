import 'package:flutter/material.dart';

class SwitchWidget extends StatefulWidget {
  @override
  _MySwitchWidgetState createState() => _MySwitchWidgetState();
}

class _MySwitchWidgetState extends State<SwitchWidget> {
  bool _isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Switch Widget'),
      ),
      body: Column(
        children : [
          Switch(
            value: _isSwitched,
            onChanged: (bool value) {
              setState(() {
                _isSwitched = value;
              });
            },
            activeColor: Colors.green, // 스위치가 On 상태일 때 색상
            inactiveTrackColor: Colors.grey, // 스위치가 Off 상태일 때 트랙(배경) 색상
          ),
          SwitchListTile(
            value: _isSwitched,
            onChanged: (bool value) {
              setState(() {
                _isSwitched = value;
              });
            },
            title: Text(_isSwitched ? 'ON' : 'OFF'), // 스위치 안쪽에 표시될 텍스트
            activeColor: Colors.green, // 스위치가 On 상태일 때 색상
            inactiveTrackColor: Colors.grey, // 스위치가 Off 상태일 때 트랙(배경) 색상
          ),
        ]
      ),
    );
  }
}
