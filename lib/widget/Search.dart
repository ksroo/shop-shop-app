import 'package:flutter/material.dart';


class DataSearch extends SearchDelegate<String>{
  @override
  List<Widget> buildActions(BuildContext context) {
    // Action for appbar
    return [
      IconButton(icon: Icon(Icons.clear), onPressed: (){

      },)
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // Icon Leading
    return   IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){
      Navigator.pop(context);
    });
  }

  @override
  Widget buildResults(BuildContext context) {
    // Results Search
    return null;
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // show when someone searchers for something
    return Text("Body Search");
  }
  
}