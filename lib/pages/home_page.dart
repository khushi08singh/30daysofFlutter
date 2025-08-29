import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final int days = 31;
    final String name = "khushi";
    return Scaffold(
      appBar: AppBar(title: Text("Catalog App"), backgroundColor: Colors.brown),
      body: Center(
        child: Container(
          child: Text("Welcome to $days days of flutter by $name !!"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
