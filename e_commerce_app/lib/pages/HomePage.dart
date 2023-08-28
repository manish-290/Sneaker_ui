import 'package:e_commerce_app/components/bottom_nav_bar.dart';
import 'package:e_commerce_app/pages/cartPage.dart';
import 'package:e_commerce_app/pages/shopPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//selsected index
  int _selectedIndex = 0;

  //function to control the tabs
  void currentNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //pages to display for checking the items

  final List<Widget> _pages = [
    //shopping page
    const shopPage(),

    //cart page
    const cartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(Icons.menu)),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text('Sneakers Collection👟',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[100],
        //logo
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DrawerHeader(
                  child: Image.asset(
                    'lib/images/nike1.png',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Divider(color: Colors.grey[300]),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Colors.black,
                    ),
                    title: Text(
                      'Home',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.info,
                      color: Colors.black,
                    ),
                    title: Text(
                      'Info',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0,bottom: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.black,
                ),
                title: Text(
                  'Logout',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),

//some other pages

      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => currentNavBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
