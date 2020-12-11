import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'controller.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends HomeController {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Klik Go'),
        backgroundColor: Colors.indigo[800],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('PT.Klik Go Indonesia'),
              accountEmail: Text('Klik Go@Gmail.co.id'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.indigo[800],
                  child: Icon(
                    Icons.person,
                    size: 50,
                  ),
                ),
              ),
              decoration: BoxDecoration(color: Colors.indigo[800]),
            ),
            ListTile(
              title: Text('Home'),
              leading: CircleAvatar(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                child: Icon(
                  Icons.apps,
                  size: 25,
                ),
              ),
            ),
            ListTile(
              title: Text('Login'),
              onTap: () => Navigator.of(context).pushNamed('/login'),
              leading: CircleAvatar(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                child: Icon(
                  Icons.login,
                  size: 25,
                ),
              ),
            ),
            ListTile(
              title: Text('Register'),
              onTap: () => Navigator.of(context).pushNamed('/register'),
              leading: CircleAvatar(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                child: Icon(
                  Icons.app_registration,
                  size: 25,
                ),
              ),
            ),
            ListTile(
              onTap: () => Navigator.of(context).pushNamed('/about'),
              title: Text('About'),
              leading: CircleAvatar(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                child: Icon(
                  Icons.info_outline,
                  size: 30,
                ),
              ),
            ),
            ListTile(
              title: Text('Produk'),
              onTap: () => Navigator.of(context).pushNamed('/produk'),
              leading: CircleAvatar(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                child: Icon(
                  Icons.shopping_cart,
                  size: 25,
                ),
              ),
            ),
            Divider(
              color: Colors.black87,
            ),
          ],
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(""),
            Text(
              "Penjelasan",
              style: TextStyle(
                fontFamily: "Georgia",
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(""),
            Text(
              "1. Untuk menampilkan Drawer Tinggal di geser",
              style: TextStyle(
                fontFamily: "Georgia",
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(""),
            Text(
              "2. Untuk Menampilkan About Serta CopyRight ada disamping Kiri",
              style: TextStyle(
                fontFamily: "Georgia",
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(""),
            Text(
              "3. Mohon Maaf Apabila ada kekurangan karna masih dalam pengembangan",
              style: TextStyle(
                fontFamily: "Georgia",
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(""),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        items: <Widget>[
          Icon(
            Icons.person,
            color: Colors.white,
          ),
          Icon(
            Icons.border_all,
            color: Colors.white,
          ),
          Icon(
            Icons.event,
            color: Colors.white,
          ),
        ],
        color: Colors.indigo[900],
        backgroundColor: Colors.white,
        animationCurve: Curves.bounceInOut,
        animationDuration: Duration(milliseconds: 100),
      ),
    );
  }
}
