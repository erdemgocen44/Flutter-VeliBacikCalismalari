import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormView extends StatefulWidget {
  const FormView({Key? key}) : super(key: key);

  @override
  _FormViewState createState() => _FormViewState();
}

class _FormViewState extends State<FormView> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                validator: (val) {
                  if (val!.isEmpty) {
                    return "have a error";
                  } else
                    return null;
                },
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Tasdas",
                  labelText: "Passworddd",
                  border: OutlineInputBorder(),
                ),
                validator: (val) {
                  if (val!.length < 6) {
                    return "minimum required 6 or more";
                  } else
                    return null;
                },
              ),
              IconButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      print("oke");
                    } else
                      print("error");
                  },
                  icon: Icon(
                    Icons.location_on,
                    size: 55,
                    color: Colors.redAccent,
                  ))
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    formKey.currentState!.dispose;
    super.dispose();
  }
}
