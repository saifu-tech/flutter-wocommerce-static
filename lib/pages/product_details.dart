import 'package:flutter/material.dart';
import 'package:ecommerce/main.dart';
class ProductDetails extends StatefulWidget {
  final product_details_name;
  final product_details_new_price;
  final product_details_old_price;
  final product_details_picture;

  ProductDetails({
    this.product_details_name,
    this.product_details_new_price,
    this.product_details_old_price,
    this.product_details_picture
});
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> new HomeApp()));
            },
            child: Text("Shopping App")),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search,color: Colors.white,), onPressed: null),
          new IconButton(icon: Icon(Icons.shopping_cart,color: Colors.white,), onPressed: null),
        ],
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
                child: Container(
                  color:Colors.white,
                  child: Image.asset(widget.product_details_picture),
                ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: new Text(widget.product_details_name, style: TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 16.0
                  ),),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("\$${widget.product_details_old_price}",
                        style: TextStyle(
                          color: Colors.grey,decoration: TextDecoration.lineThrough
                        ),),
                      ),
                      Expanded(
                        child: new Text("\$${widget.product_details_new_price}"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // first roww ====
          Row(
            children: <Widget>[
              //=== size button ===
              Expanded(
                child: MaterialButton(
                    onPressed: (){
                      showDialog(context: context,
                      builder: (context){
                        return new AlertDialog(
                          title: new  Text("size"),
                          content: new Text("Choose the size"),
                          actions: <Widget>[
                            new MaterialButton(onPressed: (){
                              Navigator.of(context).pop(context);
                            },
                            child: new Text("close"),)
                          ],
                        );
                      });
                    },
                color:Colors.white,
                  textColor: Colors.grey,
                  child:Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Size"),
                      ),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  )
                ),
              ),
              // close size button ===

              Expanded(
                child: MaterialButton(
                    onPressed: (){
                      showDialog(context: context,
                          builder: (context){
                            return new AlertDialog(
                              title: new  Text("Color"),
                              content: new Text("Choose the Color"),
                              actions: <Widget>[
                                new MaterialButton(onPressed: (){
                                  Navigator.of(context).pop(context);
                                },
                                  child: new Text("close"),)
                              ],
                            );
                          });
                    },
                    color:Colors.white,
                    textColor: Colors.grey,
                    child:Row(
                      children: <Widget>[
                        Expanded(
                          child: new Text("Color"),
                        ),
                        Expanded(
                          child: new Icon(Icons.arrow_drop_down),
                        ),
                      ],
                    )
                ),
              ),
              // close size button ===

              Expanded(
                child: MaterialButton(
                    onPressed: (){
                      showDialog(context: context,
                          builder: (context){
                            return new AlertDialog(
                              title: new  Text("qty"),
                              content: new Text("Choose the qty"),
                              actions: <Widget>[
                                new MaterialButton(onPressed: (){
                                  Navigator.of(context).pop(context);
                                },
                                  child: new Text("close"),)
                              ],
                            );
                          });
                    },
                    color:Colors.white,
                    textColor: Colors.grey,
                    child:Row(
                      children: <Widget>[
                        Expanded(
                          child: new Text("Qty"),
                        ),
                        Expanded(
                          child: new Icon(Icons.arrow_drop_down),
                        ),
                      ],
                    )
                ),
              )
            ],
          ),

          //  second roww ====
          Row(
            children: <Widget>[
              //=== size button ===
              Expanded(
                child: MaterialButton(onPressed: (){},
                    color:Colors.red,
                    textColor: Colors.white,
                    elevation: 0.2,
                  child: new Text("BuY Now"),
                ),
              ),
              // close size button ===

              new IconButton(icon: Icon(Icons.add_shopping_cart), onPressed: (){}),
              new IconButton(icon: Icon(Icons.favorite_border), onPressed: (){})
            ],
          ),
          Divider(),
          new ListTile(
            title: new Text("product Details"),
            subtitle: new Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
          ),
          Divider(),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: new Text("product Name", style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
              child: new Text(widget.product_details_name),)
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("product brand ", style: TextStyle(color: Colors.grey),),),
              // Remenber To create a product Brand
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text("Brand X"),)
            ],
          ),
          //  Add the product Condition
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("product Condition", style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text("New"),)
            ],
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text("Similar Products"),
          ),
          // similar product section
          Container(
            height: 360.0,
            child: Similar_products(),
          )
        ],
      ),
    );
  }
}

class Similar_products extends StatefulWidget {
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
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
          return Similar_single_prod(
              Prod_name: productlist[index]['name'],
              prod_picture : productlist[index]['picture'],
              prod_old_price:productlist[index]['old_price'],
              prod_price:productlist[index]['price']
          );
        });
  }
}

class Similar_single_prod extends StatelessWidget {
  final Prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Similar_single_prod({
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


