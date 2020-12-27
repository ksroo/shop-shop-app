import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'add_cart.dart';

class WomenBy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                Column(
                  children: [
                    Container(
                      child: Image.asset(
                        "assets/images/womenmin.jpg",
                        fit: BoxFit.fill,
                        height: 450,
                        width: 420,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            padding: EdgeInsets.only(top: 20, left: 20),
                            child: Text(
                              "Product 3",
                              style:
                                  TextStyle(fontSize: 32, color: Colors.black),
                            )),
                        Container(
                            padding: EdgeInsets.only(top: 20, right: 20),
                            child: Text(
                              "\$50",
                              style: TextStyle(
                                  fontSize: 40,
                                  color: Color(0xffFF0076),
                                  fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                    Container(
                        padding: EdgeInsets.only(left: 20),
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Size:",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        )),
                    Container(
                      padding: EdgeInsets.only(left: 40, top: 20),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: Text(
                              "S",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: Text(
                              "M",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: Text(
                              "L",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: Text(
                              "XL",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.only(top: 20, left: 20),
                        child: Text(
                          "Description",
                          style: TextStyle(fontSize: 32, color: Colors.black),
                        )),
                    Container(
                      padding: EdgeInsets.only(top: 20, left: 20),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s.",
                        style: TextStyle(color: Colors.black, fontSize: 22),
                      ),
                    )
                  ],
                ),
              ],
            ),
            Container(
              alignment: Alignment.bottomLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 201,
                    height: 45,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> AddCart() ));
                      },
                      color: Colors.black,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.shopping_cart,color: Colors.white,size: 30,),
                          SizedBox(width: 20,),
                          Text(
                            "Add To Cart",
                            style: TextStyle(color: Colors.white,fontSize:18 ),
                          ),

                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 201,
                    height: 45,
                    child: RaisedButton(
                      onPressed: () {},
                      color: Colors.black,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.favorite,color: Colors.white,size: 30,),
                          SizedBox(width: 10,),
                          Text(
                            "Add To Wishlist",
                            style: TextStyle(color: Colors.white,fontSize:18 ),
                          ),

                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
