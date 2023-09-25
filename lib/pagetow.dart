import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trainig5/Cartcontroller.dart';

class Pagetow extends StatelessWidget {
  const Pagetow({super.key});

  @override
  Widget build(BuildContext context) {
    var model = Provider.of<Cartcontroller>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagetow'),
      ),
      body: ListView.builder(
          itemCount: model.cart.length,
          itemBuilder: (context, i) {
            return ListTile(
              title: Text('${model.cart[i].name}'),
              subtitle: Text('${model.cart[i].age}'),
            );
          }),
    );
  }
}
