import "package:flutter/material.dart";

class DashBoardPage extends StatelessWidget {
  const DashBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Vendor Dashboard"),
          backgroundColor: Colors.teal,
        ),
        body: GridView.count(
            crossAxisCount: 2,
            padding: const EdgeInsets.all(10.0),
            children: <Widget>[
              _buildDashBoardItem(context, "Olaniyi Ojo ", "No 27 Ajose street",
                  1, "/ola-info"),
              _buildDashBoardItem(context, "Aliyu Adio", "No 27 Ajose street",
                  2, "/aliyu-info"),
            ]));
  }
}

Widget _buildDashBoardItem(
    BuildContext context, String name, String address, int num, routes) {
  return GestureDetector(
      onTap: () => Navigator.pushNamed(context, routes),
      child: Card(
          elevation: 5,
          margin: const EdgeInsets.all(6.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("Vendor $num,", style: const TextStyle(fontSize: 12)),
            Text("Name:$name", style: const TextStyle(fontSize: 14)),
            Text("Address::$address", style: const TextStyle(fontSize: 14))
          ])));
}
