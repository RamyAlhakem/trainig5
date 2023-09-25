import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trainig5/Cartcontroller.dart';
import 'package:trainig5/Mydata.dart';
import 'package:trainig5/pagetow.dart';
import 'package:trainig5/users.dart';

class Pageone extends StatelessWidget {
  Pageone({super.key});
  final List<MyData> dataList = [
    MyData('Alice', 25),
    MyData('Bob', 30),
    MyData('Charlie', 22),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return Pagetow();
                }));
              },
              icon: Icon(Icons.login))
        ],
        title: const Text('Pageone'),
      ),
      body: Consumer<Cartcontroller>(builder: (context, model, child) {
        return ListView.builder(
            itemCount: dataList.length,
            itemBuilder: (context, i) {
              return ListTile(
                title: Text(dataList[i].name),
                subtitle: Text('${dataList[i].age}'),
                trailing: IconButton(
                    onPressed: () {
                      model.addtoCart(dataList[i]);
                    },
                    icon: Icon(Icons.add)),
              );
            });
      }),
    );
  }
}
