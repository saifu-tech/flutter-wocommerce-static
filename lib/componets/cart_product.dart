import 'package:flutter/material.dart';


class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var products_on_the_cart =[ {
    "name":"Tshirt",
    "picture":"images/products/bb1.jpg",
    "price": 150,
    "size":"M",
    "color":"Red",
    "quantity":1,
  },
  {
    "name":"Formal",
    "picture":"images/products/bb2.jpg",
    "price": 100,
    "size":"M",
    "color":"Black",
    "quantity":1,
  },

  ];
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: products_on_the_cart.length,
      itemBuilder: (context, index) {
        return Single_cart_product(
          cart_prod_name: products_on_the_cart[index]["name"],
            cart_prod_color: products_on_the_cart[index]["color"],
            cart_prod_price:  products_on_the_cart[index]["price"],
            cart_prod_qty:  products_on_the_cart[index]["quantity"],
            cart_prod_size:  products_on_the_cart[index]["size"],
            cart_prod_picture: products_on_the_cart[index]["picture"]
        );
      },
    );
  }
}
class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;
  Single_cart_product({
    this.cart_prod_name,
    this.cart_prod_color,
    this.cart_prod_picture,
    this.cart_prod_price,
    this.cart_prod_qty,
    this.cart_prod_size
});


  @override
  Widget build(BuildContext context) {
    return Card(
      child: new ListTile(
        // leading Section ====
        leading: new Image.asset(cart_prod_picture,width: 50.0,height: 50.0,),
        // === title section ====
          title: new Text(cart_prod_name),
        subtitle: new Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: new Text("size:"),
               ),
               Padding(
                 padding: const EdgeInsets.all(4.0),
                 child: new Text(cart_prod_size,style: TextStyle(color: Colors.red),),
               ),

                /// ======this section of for th color product =====
                new Padding(padding: const EdgeInsets.fromLTRB(40.0, 30.0, 30.0, 30.0),
                child: new Text("Color :"),),
               Padding(
                 padding: const EdgeInsets.all(4.0),
                 child: new Text(cart_prod_color,style: TextStyle(color: Colors.red),),
               ),
              ],
            ),
            // this section is for price ====
            new Container(
              alignment: Alignment.topLeft,
              child: new Text("\$${cart_prod_price}",style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.bold
                ,),
            ),
            )
          ],
        ),
        trailing: new Column(
          children: <Widget>[
            new IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: (){}),
            new Text("$cart_prod_qty"),
            new IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: () {}),
          ],
        ),
      ),
    );
  }
}

