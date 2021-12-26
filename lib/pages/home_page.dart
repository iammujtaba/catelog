import 'package:catelog/widgets/drawer.dart';
import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  final int days = 2;
  final String content = "Welcome!! Mohd Mujtaba";

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Catelog App"),
        ),
        body: Center(child: Text("$content $days")),
        drawer: MyDrawer());
  }
}
