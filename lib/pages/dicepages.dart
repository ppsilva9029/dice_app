import 'package:flutter/material.dart';
import 'dart:math';

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int dado1 = 1;
  int dado2 = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: <Widget>[
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 10, 20),
                child: TextButton(
                  child: Image(image: AssetImage("images/dice$dado1.png")),
                  onPressed: () {
                    setState(() {
                      dado1 = Random().nextInt(6) + 1;
                    });
                  },
                ),
              )),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 20, 20),
                child: TextButton(
                  child: Image(image: AssetImage("images/dice$dado2.png")),
                  onPressed: () {
                    setState(() {
                      dado2 = Random().nextInt(6) + 1;
                    });
                  },
                ),
              ))
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.blueGrey[500],
            child: TextButton.icon(
                onPressed: () {
                  setState(() {
                    dado1 = Random().nextInt(6) + 1;
                    dado2 = Random().nextInt(6) + 1;
                  });
                },
                icon: Icon(
                  Icons.autorenew,
                  color: Colors.white,
                ),
                label: Text(
                  "Tirar dados",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                )),
          )
        ],
      ),
    );
  }
}
