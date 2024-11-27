import "package:flutter/material.dart";

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Register User"),
          backgroundColor: Colors.teal,
        ),
        body: Container(
            padding: const EdgeInsets.all(10.0),
            child: Form(
                key: _formkey,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextFormField(
                          decoration: const InputDecoration(
                              labelText: "Full name",
                              border: OutlineInputBorder()),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "please enter a valid name";
                            }
                            return null;
                          }),
                      const SizedBox(height: 20),
                      TextFormField(
                          decoration: const InputDecoration(
                              labelText: "Email", border: OutlineInputBorder()),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter a valid email address";
                            }
                            return null;
                          }),
                      const SizedBox(height: 20),
                      TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(
                              labelText: "Password",
                              border: OutlineInputBorder()),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Enter a valid password";
                            }

                            return null;
                          }),
                      const SizedBox(height: 20),
                      ElevatedButton(
                          onPressed: () {
                            if (_formkey.currentState!.validate()) {
                              print("successfully registered");

                              Navigator.pushNamed(context, "/");
                            }
                          },
                          child: Text("Regidter"),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.teal,
                              foregroundColor: Colors.white))
                    ]))));
  }
}
