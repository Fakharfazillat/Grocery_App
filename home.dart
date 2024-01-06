import 'package:flutter/material.dart';
import 'package:flutter_application_6/cart.dart';
import 'package:flutter_application_6/home_screen.dart';
import 'package:flutter_application_6/login_screen.dart';
import 'package:flutter_application_6/utils.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      initialIndex: 1,
      child: Scaffold(
        body: TabBarView(children: [
          LoginScreen(),
          HomePage(),
          Cart_page(),
        ]),
        bottomNavigationBar: TabBar(
          tabs: [
            Tab(
              icon: Icon(Icons.undo),
            ),
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.shopping_cart),
            ),
            Tab(
              icon: Icon(Icons.event_note),
            ),
            Tab(
              icon: Icon(Icons.person),
            ),
          ],
          labelColor: green,
          unselectedLabelColor: Colors.black,
        ),
      ),
    );
  }
}
