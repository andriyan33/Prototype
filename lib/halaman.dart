import 'package:flutter/material.dart';

class HalK1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("K1"),
      ),
      body: Center(
          child: RaisedButton(
        child: Text("Back"),
        onPressed: () {
          Navigator.pop(context);
        },
      )),
    );
  }
}

class HalK2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("K2"),
      ),
      body: Center(
          child: RaisedButton(
        child: Text("Back"),
        onPressed: () {
          Navigator.pop(context);
        },
      )),
    );
  }
}
