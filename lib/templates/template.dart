import 'package:flutter/material.dart';
import 'package:coockieclickers_project/screens/clickerscreen/clicker.screen.dart';
import 'package:coockieclickers_project/screens/shopscreen/shop.screen.dart';

class Template extends StatefulWidget {
  const Template({Key? key}) : super(key: key);

  @override
  _TemplateState createState() => _TemplateState();
}

class _TemplateState extends State<Template> {
  int _index = 0;
  final screens = const [
    ClickerScreen(),
    ShopScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _index,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.brown[400],
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.circle),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: 'Shop',
          ),
        ],
        currentIndex: _index,
        onTap: (index) => setState(() => _index = index),
      ),
    );
  }
}
