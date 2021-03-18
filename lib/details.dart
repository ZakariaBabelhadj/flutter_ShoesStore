import 'package:flutter/material.dart';
import 'package:lipsum/lipsum.dart' as lipsum;

class Details extends StatelessWidget {
  final String image;
  final String brand;
  final int price;
  final int i;
  Details(
      {@required this.image,
      @required this.brand,
      @required this.price,
      @required this.i});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 1,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        child: Column(
          children: [
            Hero(
              tag: '$brand to $i',
              child: ClipRRect(
                  child: Image(
                image: AssetImage(this.image),
                fit: BoxFit.cover,
                height: 360,
                alignment: Alignment.topCenter,
              )),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  padding: EdgeInsets.all(10),
                  color: Colors.black,
                  alignment: Alignment.center,
                  height: 50,
                  child: Text(
                    "Buy Now!",
                    style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      this.brand,
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Text("Available Now IS THE Store")
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Row(children: [
                    Text(
                      this.price.toString(),
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.attach_money_rounded)
                  ]),
                )
              ],
            ),
            Padding(
                padding: EdgeInsets.all(18),
                child: Text(
                    lipsum.createText(numParagraphs: 1, numSentences: 5),
                    style: TextStyle(color: Colors.grey[600], height: 1.4))),
          ],
        ),
      ),
    );
  }
}
