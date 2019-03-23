
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//my own imports
import 'package:ecommerce/componets/horizontal_listview.dart';
import 'package:ecommerce/componets/products.dart';
import 'pages/cart.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomeApp(),
    )
  );
}

class HomeApp extends StatefulWidget {
  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
  Widget image_carousel = new Container(
    height: 200.0,
    child: new Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('images/c1.jpg'),
        AssetImage('images/m1.jpg'),
        AssetImage('images/m2.jpg'),
        AssetImage('images/w1.jpg'),
        AssetImage('images/w3.jpg'),
      ],
      autoplay: true,
      dotSize: 4.0,
indicatorBgPadding: 2.0,
dotBgColor: Colors.transparent,
//      animationCurve: Curves.fastOutSlowIn,
//      animationDuration: Duration(milliseconds: 1000),
    ),
  );

    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text("Shopping App"),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search,color: Colors.white,), onPressed: (){}),
          new IconButton(icon: Icon(Icons.shopping_cart,color: Colors.white,), onPressed:() {
            Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()));
          } ),
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            //header
            new  UserAccountsDrawerHeader(accountName: Text("Saifu Deen"), accountEmail: Text("saifu@gmail.com"),
            currentAccountPicture: GestureDetector(
              child: new CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(Icons.person,color: Colors.white,),
              ),
            ),
              decoration: new BoxDecoration(
                color: Colors.red,
              ),
            ),
            //body
            
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home,color: Colors.red,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("My Account"),
                leading: Icon(Icons.person,color: Colors.red,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("My Orders"),
                leading: Icon(Icons.shopping_basket,color: Colors.red,),
              ),
            ),

            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()));
              },
              child: ListTile(
                title: Text("Shopping Cart"),
                leading: Icon(Icons.shopping_cart,color: Colors.red,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("Favourites"),
                leading: Icon(Icons.favorite,color: Colors.green,),
              ),
            ),
            Divider(),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("Setting"),
                leading: Icon(Icons.settings,color: Colors.blue,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("About"),
                leading: Icon(Icons.help,color: Colors.green,),
              ),
            )
          ],

        ),
      ),
      body: new Column(
        children: <Widget>[
          image_carousel,
          //padding Widget
          new Padding(padding: const EdgeInsets.all(4.0),
          child: Container(
            alignment: Alignment.centerLeft,
              child: new Text("Categories")),
          ),
          // Horizontal list View
          HorizontalList(),

          new Padding(padding: const EdgeInsets.all(2.0),
            child: Container(
                alignment:Alignment.centerLeft,child: new Text("Recent Products")),
            // grid view
          ),
//          Container(
//            height: 320.0,
//            child: Products(),
//          )
      Flexible(child: Products(),)
        ],
      ),
    );
  }
}
