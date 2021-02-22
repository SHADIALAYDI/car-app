import 'package:first/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:intl/intl.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget avatar(img, txt) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.green,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(img),
            ),
            radius: 50,
          ),
          Text(
            txt,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  final button = LikeButton(
    size: 40,
    circleColor: CircleColor(start: Colors.red, end: Colors.red),
    bubblesColor: BubblesColor(
      dotPrimaryColor: Colors.red,
      dotSecondaryColor: Colors.red,
    ),
    likeBuilder: (bool isLiked) {
      return Icon(
        Icons.favorite,
        color: isLiked ? Colors.red : Colors.white,
        size: 40,
      );
    },
  );

  Widget text(txt) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            txt,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Text(
            "View All >",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green),
          ),
        ],
      ),
    );
  }

  Widget deal(img, price, name, date) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: Container(
              color: Colors.green,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      price,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Image.asset(
                      img,
                      width: 120,
                      height: 120,
                    ),
                    button,
                  ],
                ),
              ),
            ),
          ),
          Text(
            name,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          Text(
            date,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
  Widget drawer(icon,txt,function){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FlatButton(
        onPressed: function,
        child: Row(


          children: [
            Icon(icon,color: Colors.green,),
            SizedBox(width: 40,),
            Text(
            txt,
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.green),
            )

          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        toolbarHeight: 80,
        elevation: 18,
        leading: Builder(
          builder: (con) => IconButton(
              onPressed: () {
                Scaffold.of(con).openDrawer();
              },
              icon: Icon(
                Icons.menu,
                size: 30,
              )),
        ),
        title: Text(
          "Cars",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.person,
            size: 30,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.search,
            size: 30,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          text("All Categories"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                avatar("images/car.png", "accent>"),
                avatar("images/car.png", "accent>"),
                avatar("images/car.png", "accent>"),
                avatar("images/car.png", "accent>"),
                avatar("images/car.png", "accent>"),
                avatar("images/car.png", "accent>"),
                avatar("images/car.png", "accent>"),
                avatar("images/car.png", "accent>"),
                avatar("images/car.png", "accent>"),
              ],
            ),
          ),
          text("Cars Deals"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                deal("images/car.png", "20\$", "accent",
                    DateFormat('yyyy-MM-dd   kk:mm').format(DateTime.now())),
                deal("images/car.png", "20\$", "accent",
                    DateFormat('yyyy-MM-dd   kk:mm').format(DateTime.now())),
                deal("images/car.png", "20\$", "accent",
                    DateFormat('yyyy-MM-dd   kk:mm').format(DateTime.now())),
                deal("images/car.png", "20\$", "accent",
                    DateFormat('yyyy-MM-dd   kk:mm').format(DateTime.now())),
                deal("images/car.png", "20\$", "accent",
                    DateFormat('yyyy-MM-dd   kk:mm').format(DateTime.now())),
                deal("images/car.png", "20\$", "accent",
                    DateFormat('yyyy-MM-dd   kk:mm').format(DateTime.now())),
                deal("images/car.png", "20\$", "accent",
                    DateFormat('yyyy-MM-dd   kk:mm').format(DateTime.now())),
                deal("images/car.png", "20\$", "accent",
                    DateFormat('yyyy-MM-dd   kk:mm').format(DateTime.now())),
                deal("images/car.png", "20\$", "accent",
                    DateFormat('yyyy-MM-dd   kk:mm').format(DateTime.now())),
              ],
            ),
          ),
          text("Car Details"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                deal("images/car.png", "20\$", "accent",
                    DateFormat('yyyy-MM-dd   kk:mm').format(DateTime.now())),
                deal("images/car.png", "20\$", "accent",
                    DateFormat('yyyy-MM-dd   kk:mm').format(DateTime.now())),
                deal("images/car.png", "20\$", "accent",
                    DateFormat('yyyy-MM-dd   kk:mm').format(DateTime.now())),
                deal("images/car.png", "20\$", "accent",
                    DateFormat('yyyy-MM-dd   kk:mm').format(DateTime.now())),
                deal("images/car.png", "20\$", "accent",
                    DateFormat('yyyy-MM-dd   kk:mm').format(DateTime.now())),
                deal("images/car.png", "20\$", "accent",
                    DateFormat('yyyy-MM-dd   kk:mm').format(DateTime.now())),
                deal("images/car.png", "20\$", "accent",
                    DateFormat('yyyy-MM-dd   kk:mm').format(DateTime.now())),
                deal("images/car.png", "20\$", "accent",
                    DateFormat('yyyy-MM-dd   kk:mm').format(DateTime.now())),
                deal("images/car.png", "20\$", "accent",
                    DateFormat('yyyy-MM-dd   kk:mm').format(DateTime.now())),
              ],
            ),
          )
        ],
      )),
      bottomNavigationBar: new BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          new BottomNavigationBarItem(
              backgroundColor: Colors.green,
              title: new Text('Home'),
              icon: new Icon(Icons.home)),
          new BottomNavigationBarItem(
              backgroundColor: Colors.green,
              title: new Text('Cart'),
              icon: new Icon(Icons.shopping_cart)),
          new BottomNavigationBarItem(
              backgroundColor: Colors.green,
              title: new Text('Favourite'),
              icon: new Icon(Icons.favorite)),
          new BottomNavigationBarItem(
              backgroundColor: Colors.green,
              title: new Text('Person'),
              icon: new Icon(Icons.person_pin)),
          new BottomNavigationBarItem(
              backgroundColor: Colors.green,
              title: new Text('Category'),
              icon: new Icon(Icons.widgets_rounded)),
        ],
      ),
      drawer: Drawer(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  alignment: Alignment.center,
                  color: Colors.green,
                  height: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          "images/cars.jpg",
                        ),
                        radius: 50,
                      ),
                      Text(
                        "Shadi",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
                drawer(Icons.person, "profile",(){}),
                drawer(Icons.directions_car_sharp, "cars",(){}),
                drawer(Icons.category, "categories",(){}),
                drawer(Icons.notifications_active, "notification",(){}),
                drawer(Icons.settings, "setting",(){}),
                drawer(Icons.info, "about us",(){}),
                drawer(Icons.help, "help",(){}),
                drawer(Icons.logout, "log out",(){Navigator.pushReplacement(context, MaterialPageRoute(builder: (con)=>Login()));}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
