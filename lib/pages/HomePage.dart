import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:revision_24_chapter/Utils/MyDrawer.dart';
import 'package:revision_24_chapter/models/Catalog.dart';
import '../Widget/ItemWidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

@override
class _HomePageState extends State<HomePage> {
  //for load the data in it
  void initState() {
    //to do in it state
    super.initState();
    loadData();
  }

  loadData() async {
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodeData = jsonDecode(catalogJson);
    print(decodeData);
  }

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, ((index) => CatalogModel.item[0]));
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: ListView.builder(
        //  itemCount: CatalogModel.item.length,
        itemCount: dummyList.length,
        itemBuilder: (BuildContext context, int index) {
          return ItemWidget(
            //  item: CatalogModel.item[index],
            item: dummyList[index],
          );
        },
      ),
      drawer: MyDrawer(),
    );
  }
}
