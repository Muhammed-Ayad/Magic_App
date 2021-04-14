import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.teal,
        ),
        backgroundColor: Colors.tealAccent,
        body: Magic(),
      ),
    ),
  );
}

class Magic extends StatefulWidget {
  @override
  _MagicState createState() => _MagicState();
}
class _MagicState extends State<Magic> {

  int magicNumber =1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Center(
            child: FlatButton(
              onPressed: (){
                setState(() {
                magicNumber =Random().nextInt(5)+1;
                });
              },
              child: Image.asset('images/ball$magicNumber.png'),
            ),
          ),
        ),
      ],
    );
  }
}
