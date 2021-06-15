import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mini_project_1/categories.dart';
import 'package:mini_project_1/submit.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('New York Gyro'),
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
            SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                      color: Colors.white, width: 3, style: BorderStyle.solid),
                ),
                child: Center(
                    child: Image(
                  image: AssetImage('assets/logo.png'),
                )),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                left: 30,
                right: 30,
                top: 30,
              ),
              width: MediaQuery.of(context).size.width * 0.8,
              height: 50,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 2),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.lightBlueAccent),
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Username",
                    icon: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 30, right: 30, top: 20),
              width: MediaQuery.of(context).size.width * 0.8,
              height: 50,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 2),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.lightBlueAccent),
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Email",
                    icon: Icon(
                      Icons.email_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                left: 30,
                right: 30,
                top: 20,
              ),
              width: MediaQuery.of(context).size.width * 0.8,
              height: 50,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 2),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.lightBlueAccent),
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Password",
                    icon: Icon(
                      Icons.lock,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton.extended(
                  heroTag: "loginbutton",
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Submit()));
                  },
                  label: Text("Login"),
                  icon: Icon(
                    Icons.login_outlined,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                FloatingActionButton.extended(
                  heroTag: "Registerbutton",
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Submit()));
                  },
                  label: Text("Register"),
                  focusColor: Colors.black,
                  hoverColor: Colors.black,
                  icon: Icon(Icons.app_registration),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
