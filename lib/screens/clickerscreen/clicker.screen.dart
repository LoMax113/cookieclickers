import 'package:flutter/material.dart';

class ClickerScreen extends StatefulWidget {
  const ClickerScreen({Key? key}) : super(key: key);

  @override
  _ClickerScreenState createState() => _ClickerScreenState();
}

int money = 0;
int multiple = 1;
int counter = 0;

class _ClickerScreenState extends State<ClickerScreen> {
  void incrementcounter() {
    setState(() {
      counter = counter + multiple;
      money = money + multiple;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(36),
            color: Colors.brown,
          ),
          margin: const EdgeInsets.all(10),
          width: 120,
          height: 120,
          child: Center(
            child: Text(
              '$counter',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: incrementcounter,
      ),
    );
  }
}
