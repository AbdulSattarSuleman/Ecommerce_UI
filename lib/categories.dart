import 'package:flutter/material.dart';
import 'package:mini_project_1/products.dart';

import 'main.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width * 0.80,
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                ),
                child: Image(
                  alignment: Alignment.topLeft,
                  image: AssetImage('assets/logo.png'),
                  height: 10,
                  width: 50,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home_outlined),
              title: Text("Home".toUpperCase()),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyApp()));
              },
            ),
            ListTile(
              leading: Icon(Icons.location_on_outlined),
              title: Text("Order Online".toUpperCase()),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Categories()));
              },
            ),
            ListTile(
              leading: Icon(Icons.info_outline_rounded),
              title: Text("About".toUpperCase()),
            ),
            ListTile(
                leading: Icon(Icons.contact_phone_outlined),
                title: Text("Contact".toUpperCase()),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyApp()));
                }),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Products()));
              },
              child: Container(
                child: Center(
                    child: Text(
                  "Gyro And Kebab",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w800,
                  ),
                )),
                width: MediaQuery.of(context).size.width,
                height: 160,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/chapli.jpg"),
                    fit: BoxFit.fitWidth,
                    colorFilter: ColorFilter.mode(
                        Colors.black26.withOpacity(0.3), BlendMode.darken),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Container(
              child: Center(
                child: Text(
                  "Burger Combo",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              width: MediaQuery.of(context).size.width,
              height: 160,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/burger.jpg"),
                  fit: BoxFit.fitWidth,
                  colorFilter: ColorFilter.mode(
                    Colors.black12.withOpacity(0.5),
                    BlendMode.hardLight,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Container(
              child: Center(
                child: Text(
                  "Family Platter".toUpperCase(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              width: MediaQuery.of(context).size.width,
              height: 160,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/gyro.jpg"),
                    fit: BoxFit.fitWidth,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.4),
                      BlendMode.hardLight,
                    )),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Container(
              child: Center(
                child: Text(
                  "pizza".toUpperCase(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              width: MediaQuery.of(context).size.width,
              height: 160,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/pizza.jpg"),
                  fit: BoxFit.fitWidth,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.3),
                    BlendMode.darken,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Container(
              child: Center(
                child: Text(
                  "paratha".toUpperCase(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              width: MediaQuery.of(context).size.width,
              height: 160,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/paratha.jpg"),
                    fit: BoxFit.fitWidth,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.4),
                      BlendMode.hardLight,
                    )),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Container(
              child: Center(
                child: Text(
                  "desserts".toUpperCase(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              width: MediaQuery.of(context).size.width,
              height: 160,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/dessert.jpg"),
                  fit: BoxFit.fill,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.2),
                    BlendMode.darken,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
