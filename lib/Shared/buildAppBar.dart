import 'package:flutter/material.dart';

class BuildAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.grey[300],
      iconTheme: IconThemeData(color: Colors.black),
      elevation: 0,
      title: Text(
        "Clothes Store",
        style: TextStyle(color: Colors.black, letterSpacing: 2),
      ),
      titleSpacing: 1,
      centerTitle: true,
    );
  }
}
