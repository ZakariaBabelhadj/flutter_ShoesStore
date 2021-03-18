import 'package:flutter/material.dart';
import 'package:flutter_application_1/Shared/buildAppBar.dart';
import 'package:flutter_application_1/Shared/buildContainerImage.dart';
import 'package:flutter_application_1/Shared/buildDrawer.dart';
import 'package:flutter_application_1/Shared/buildListTile.dart';
import 'dart:ui';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> imgs = [
    'images/shoes1.png',
    'images/shoes2.webp',
    'images/shoes3.png',
    'images/shoes4.png',
    'images/shoes5.png',
    'images/shoes6.png',
  ];
  List<String> brand = ["AirMax", "Nike", "Wierd", "Nike", "Nike", "Simple"];
  List<int> price = [135, 98, 70, 170, 166, 199];
  final String sectionName = "Shoes";
  final String imageStore = 'images/store1.webp';
  Widget _buildTile(int i) {
    return BuildListTile(
      i: i,
      image: imgs[i],
      brand: brand[i],
      price: price[i],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: BuildAppBar(),
        preferredSize: Size.fromHeight(50),
      ),
      drawer: Drawer(
        
        child: BuildDrawer(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BuildContainerImage(
            image: imageStore,
            sectionName: sectionName,
          ),
          Flexible(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: ListView.builder(
                  itemCount: imgs.length,
                  itemBuilder: (context, index) {
                    return _buildTile(index);
                  }),
            ),
          )
        ],
      ),
    );
  }
}
