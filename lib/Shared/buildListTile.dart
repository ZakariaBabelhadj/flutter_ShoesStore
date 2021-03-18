import 'package:flutter/material.dart';
import 'package:flutter_application_1/details.dart';

class BuildListTile extends StatelessWidget {
  final int i, price;
  final String image, brand;
  BuildListTile({this.i, this.brand, this.image, this.price});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Details(
                    image: this.image,
                    brand: this.brand,
                    price: this.price,
                    i: this.i,
                  ))),
      contentPadding: EdgeInsets.all(5),
      title: Text(
        "${this.brand}",
        style: TextStyle(
            color: Colors.red, fontSize: 14, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(" Available In All Sizes"),
      trailing: Text('\$${this.price}'),
      leading: Hero(
        tag: '${this.brand} to ${this.i}',
        child: ClipRRect(
            child: Image(
          image: AssetImage(this.image),
          width: 100,
          height: 100,
        )),
      ),
    );
  }
}
