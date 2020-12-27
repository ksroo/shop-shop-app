

import 'package:flutter/material.dart';
import 'package:walid_shop/model/product_home.dart';
import 'package:walid_shop/page/womenBy.dart';
import 'package:walid_shop/widget/Search.dart';

class WomenPage extends StatefulWidget {
  @override
  _WomenPageState createState() => _WomenPageState();
}

class _WomenPageState extends State<WomenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: (Icon(
            Icons.keyboard_arrow_left,
            color: Colors.black,
            size: 40,
          )),
        ),
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
          "Women",
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              height: 800,
              child: GridView.builder(
                itemCount: ProductHome.womenPage.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return _womenPageView(index);
                },
              ),
            ),
          ),
          Container(
            height: 50,
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.only(right: 20,left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Filters",style: TextStyle(color: Color(0xffFF0062),fontSize: 24),),
                  Text("Sort By",style: TextStyle(color: Color(0xffFF0062),fontSize: 24),),
                ],
              ),
            ),

          ),
        ],
      ),
    );
  }
  Widget _womenPageView(int index) {
    return Stack(
      children: [
        InkWell(
          onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => WomenBy()));
          },
          child: Container(
            margin: EdgeInsets.all(10),
            height: 400,
            width: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  ProductHome.womenPage[index],
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 40,
                  width: double.infinity,
                  color: Colors.white54,
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Text(
                          "Product1",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Text(
                          "\$20",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}








