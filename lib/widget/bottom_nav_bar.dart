import 'package:flutter/material.dart';
import 'package:walid_shop/page/home_page.dart';
import 'package:walid_shop/page/personal_page.dart';
import 'package:walid_shop/page/shop_page.dart';

import 'Search.dart';


class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  GlobalKey _menKey = GlobalKey();
  int _page = 0;

  void _pageindex(int index){
    setState(() {
      _page = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    List<Widget> tabs = [
      HomePage(),
      PersonalPage(),
      ShopPage(),
    ];

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Row(
            children: [
              InkWell(
                onTap: () {},
                child: Icon(
                  Icons.favorite,
                  color: Colors.black,
                  size: 30,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                  onTap: () {
                    showSearch(context: context, delegate: DataSearch());
                  },
                  child: Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 30,
                  )),
            ],
          ),
        ],
        backgroundColor: Colors.white,
        title: Text(
          "Logo",
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _page,
        key: _menKey,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,
            ),
            backgroundColor: Colors.black,
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            backgroundColor: Colors.black,
            label: "Personal",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            backgroundColor: Colors.black,
            label: "Shop",
          ),

        ],
        onTap: _pageindex,
        fixedColor: Colors.red,
      ),
      body: tabs[_page],
    );
  }
}

