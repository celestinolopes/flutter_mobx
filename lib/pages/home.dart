import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx1/pages/login.dart';
import 'package:mobx1/stores/counter_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final counterController = CounterController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => LoginScreen()));
              },
              icon: Icon(Icons.arrow_forward_ios_outlined))
        ],
      ),
      body: Center(
        child: Container(
          child: Observer(builder: (_) {
            return Text('Value: ${counterController.count}');
          }),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: counterController.increment,
      ),
    );
  }
}
