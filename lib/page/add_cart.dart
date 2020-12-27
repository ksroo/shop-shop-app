import 'package:flutter/material.dart';
import 'package:walid_shop/widget/Search.dart';

class AddCart extends StatefulWidget {
  @override
  _AddCartState createState() => _AddCartState();
}

class _AddCartState extends State<AddCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
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
          "Cart",
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              Container(
                margin: EdgeInsets.only(top: 15),
                height: 100,
                width: 100,
                child: Card(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Image.asset("assets/images/womenmin.jpg"),
                      ),
                      Expanded(
                        flex: 4,
                        child: Container(
                            height: 100,
                            alignment: Alignment.topLeft,
                            child: Column(
                              children: [
                                Text(
                                  "Product 3",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 28,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                Text(
                                  "\$50",
                                  style: TextStyle(
                                    color: Color(0xffFF0000),
                                    fontSize: 22,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                Text(
                                  "Size: L",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 22,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            )
                        ),

                      ),
                      Container(
                        alignment: Alignment.bottomCenter,
                        child: Text("Delete",style: TextStyle(color: Color(0xffFF0000),fontSize: 18),),
                      ),




                    ],
                  ),

                ),
              ),
            ],
          ),
          Container(
          padding: EdgeInsets.all(10),
            height: 550,
            alignment: Alignment.bottomRight,
            child: Text("Total: \$50",style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold),),
          ),
          Container(

            alignment: Alignment.bottomLeft,
            child: Row(
              children: [
                Expanded(
                  child: Container(

                    height: 45,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> AddCart() ));
                      },
                      color: Colors.black,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Buy Now",
                            style: TextStyle(color: Colors.white,fontSize:24 ),
                          ),
                          Icon(Icons.arrow_forward_ios,color: Colors.white,size: 30,),



                        ],
                      ),
                    ),
                  ),
                ),


              ],
            ),
          ),
        ],
      ),
    );
  }
}
