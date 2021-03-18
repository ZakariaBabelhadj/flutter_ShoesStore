import 'package:flutter/material.dart';

class BuildContainerImage extends StatelessWidget {
  final String sectionName, image;
  BuildContainerImage({this.sectionName, this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(this.image),
            fit: BoxFit.cover,
            alignment: Alignment.topLeft),
      ),
      alignment: Alignment.center,
      width: double.infinity,
      height: 200,
      child: Text(
        "${this.sectionName} Section",
        textAlign: TextAlign.center,
        style: TextStyle(
            letterSpacing: 2,
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
