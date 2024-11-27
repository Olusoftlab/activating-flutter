import "package:flutter/material.dart";

class OlaPage extends StatelessWidget {
  const OlaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Ola information"),
          backgroundColor: Colors.teal,
        ),
        body: const Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text("Ola food varieties")],
            )));
  }
}
