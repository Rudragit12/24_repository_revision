// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import '../models/Catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: Image.network(item.image),
          title: Text(item.name),
          subtitle: Text(item.desc),
          trailing: Text(
            "\$${item.price}",
            style: TextStyle(color: Colors.teal, fontWeight: FontWeight.bold),
            textScaleFactor: 1.2,
          ),
        ),
      ),
    );
  }
}
