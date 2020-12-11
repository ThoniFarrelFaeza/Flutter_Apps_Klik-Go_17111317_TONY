import 'package:a/login/login.dart';
import 'package:a/produk/produk.dart';
import 'package:a/register/register.dart';
import 'package:flutter/material.dart';
import './home/view.dart';
import 'login/login.dart';
import 'about/about.dart';
import 'register/register.dart';

class HomeApps extends StatefulWidget {
  @override
  _HomeAppsState createState() => _HomeAppsState();
}

class _HomeAppsState extends State<HomeApps> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Klik Go',
      routes: {
        '/': (BuildContext _) => HomeView(),
        '/login': (BuildContext _) => Login(),
        '/register': (BuildContext _) => Register(),
        '/about': (BuildContext _) => About(),
        '/produk': (BuildContext _) => Produk(),
      },
      initialRoute: '/',
    );
  }
}
