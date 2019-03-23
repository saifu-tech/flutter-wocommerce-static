import 'package:flutter/material.dart';
import 'package:ecommerce/pages/product_details.dart';
class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productlist = [
    {
      "name":"Tshirt",
      "picture":"images/products/bb1.jpg",
      "old_price": "200",
      "price": "150"
    },{
      "name":"Formal",
      "picture":"images/products/bb2.jpg",
      "old_price": "200",
      "price": "150"
    },
    {
      "name":"Blazer",
      "picture":"images/products/bb3.jpg",
      "old_price": "200",
      "price": "150"
    },{
      "name":"Blazer",
      "picture":"images/products/bb4.jpg",
      "old_price": "200",
      "price": "150"
    },{
      "name":"Blazer",
      "picture":"images/products/bb5.jpg",
      "old_price": "200",
      "price": "150"
    }
  ];
  @override
  Widget build(BuildContext context) {
  return  GridView.builder(
    itemCount: productlist.length,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context,int index){
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Single_prod(
          Prod_name: productlist[index]['name'],
      prod_picture : productlist[index]['picture'],
      prod_old_price:productlist[index]['old_price'],
      prod_price:productlist[index]['price']
      ),
    );
    });
      }
}

class Single_prod extends StatelessWidget {
  final Prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.Prod_name,
    this.prod_old_price,
    this.prod_picture,
    this.prod_price
});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: new Text("Hero 1"),
          child: Material(
            child: InkWell(
              onTap: ()=>Navigator.of(context).push(
                  new MaterialPageRoute(builder: (context) =>new ProductDetails(
                    product_details_name: Prod_name,
                      product_details_new_price:prod_price,
                      product_details_old_price:prod_old_price,
                      product_details_picture:prod_picture
                  ) )),
              child: GridTile(
                footer: Container(
                  color: Colors.white70,
child:new Row(children: <Widget>[
  Expanded(
    child: Text(
      Prod_name, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),
    ),
  ),
  new Text("\$${prod_price}", style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)
],)
//                  child: ListTile(
//                    leading: Text(Prod_name, style: TextStyle(fontWeight: FontWeight.bold),
//                    ),
//                    title: Text("\$$prod_price",style: TextStyle(
//                      color: Colors.red,fontWeight: FontWeight.w800
//                    ),
//                    ),
//                    subtitle: Text("\$$prod_old_price",style: TextStyle(
//                        color: Colors.black54,fontWeight: FontWeight.w800,
//                      decoration: TextDecoration.lineThrough
//                    ),
//                    ),
//                  ),
                ),
                  child: Image.asset(prod_picture,
                    fit: BoxFit.cover,)),
      ),)),
    );
  }
}

