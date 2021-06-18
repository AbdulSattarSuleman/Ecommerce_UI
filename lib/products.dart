import 'package:flutter/material.dart';

import 'categories.dart';
import 'main.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  // My Product Title List
  final productTitle = [
    'Lamb Gyro ',
    'Combo Platter ',
    'Chicken and Rice ',
    'Lamb And Rice ',
    'Falafel Rice',
    'Falafel Gyro',
    'Chicken Gyro ',
    'Kofta Kebab ',
    'Lamb Chops',
    'Chicken Biryani'
  ];

  // Product Description
  final productDesc = [
    'Pita Bread, choose Vegetable option(s), Gyro meat with our Cucumber Sauce. Hot and green sauce are optional. Don’t Forget to add drinks.',
    'Rice, choose Vegetable option(s), Chicken and Gyro meat with our cucumber sauce. Hot and green sauce are optional. Don’t Forget to add drinks.',
    'Rice, choose Vegetable option(s), Chicken meat with our cucumber sauce. Hot and green sauce are optional. Don’t Forget to add drinks.',
    '',
    'Rice, choose Vegetable option(s), 5-6 pieces of Falafel deep fried with our cucumber sauce. Hot and green sauce are optional. Don’t Forget to add drinks.',
    'Pita Bread, choose Vegetable option(s), 3-4 piece of falafel deep fried with our Cucumber Sauce. Hot and green sauce are optional. Don’t Forget to add drinks.',
    'Pita Bread, choose Vegetable option(s), Chicken meat with our Cucumber Sauce. Hot and green sauce are optional. Don’t Forget to add drinks.',
    'Rice, choose Vegetable option(s), 2 long pieces of kofta kabob barbecued which is cut in small pieces with our cucumber sauce. Hot and green sauce are optional. Don’t Forget to add drinks',
    'Rice, choose Vegetable option(s), 3-4 pieces of lamb chops barbecued with our cucumber sauce. Hot and green sauce are optional. Don’t Forget to add drinks.',
    'Rice cooked with small pieces of chicken breast. Add Vegetable Option(s). Biryani comes medium spicy. Cucumber, Hot and green sauce are optional. Don’t Forget to add drinks.'
  ];
  final productPrice = [
    '\$10',
    '\$20',
    '\$30',
    '\$40',
    '\$50',
    '\$60',
    '\$70',
    '\$80',
    '\$90',
    '\$100'
  ];
  List<dynamic> lst = [1, 2, 3, 4, 5, 6];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Products'),
          bottom: TabBar(
            tabs: [
              Tab(
                text: "List View",
                icon: Icon(Icons.view_list),
              ),
              Tab(
                text: "Grid View",
                iconMargin: EdgeInsets.only(left: 10),
                icon: Icon(Icons.grid_view),
                // text: "Grid View",
              )
            ],
          ),
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyApp()));
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
        body: TabBarView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView.builder(
                itemCount: productTitle.length,
                itemBuilder: (context, index) {
                  return Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Colors.lightBlueAccent[100],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 5,
                    child: ListTile(
                      title: Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              productTitle[index],
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 19,
                              ),
                            ),
                            Text(
                              productPrice[index],
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19),
                            )
                          ],
                        ),
                      ),
                      // tileColor: Colors.black,
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                        child: Text(productDesc[index]),
                      ),
                      trailing: Icon(Icons.keyboard_arrow_right_outlined),
                      onTap: () {
                        print("Product Title = ${productTitle[index]}");
                      },
                    ),
                  );
                },
              ),
            ),
            GridView.builder(
              itemCount: productTitle.length,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  clipBehavior: Clip.hardEdge,
                  color: Colors.lightBlueAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          productTitle[index].toUpperCase(),
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Price: ${productPrice[index]}'.toUpperCase(),
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      // Text("\$90"),
                      // SizedBox(
                      //   height: 80,
                      // ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text("info".toUpperCase(),
                                style: TextStyle(color: Colors.black)),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text("checkout".toUpperCase(),
                                style: TextStyle(color: Colors.black)),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
