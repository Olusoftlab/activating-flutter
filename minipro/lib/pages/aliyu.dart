import "package:flutter/material.dart";

class AliyuPage extends StatelessWidget {
  const AliyuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Aliyu information"),
          backgroundColor: Colors.teal,
        ),
        body: const Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text("Aliyu food varieties")],
            )));
  }
}
