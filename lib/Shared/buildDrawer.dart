import 'package:flutter/material.dart';

class BuildDrawer extends StatefulWidget {
  @override
  _BuildDrawerState createState() => _BuildDrawerState();
}

class _BuildDrawerState extends State<BuildDrawer> {
  final listKey = GlobalKey<AnimatedListState>();
  List<String> items = ["Shoes", "Shirts", "T-Shirts"];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Padding(
            padding: EdgeInsets.only(top: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.green,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Store",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2),
                ),
                SizedBox(
                  height: 5,
                ),
                Text("These Are The Products")
              ],
            ),
          ),
        ),
        Divider(
          height: 20,
          thickness: 5,
        ),
      ],
    );
  }
}
