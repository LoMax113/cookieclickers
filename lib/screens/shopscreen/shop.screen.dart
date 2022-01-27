import 'package:flutter/material.dart';
import 'package:coockieclickers_project/screens/clickerscreen/clicker.screen.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  _ShopScreenState createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.brown,
      ),
      margin: EdgeInsets.fromLTRB(20, 50, 20, 650),
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Center(
        child: Text(
          '$money',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    ));
  }
}
