import 'package:flutter/material.dart';

// Define a custom Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();
  final List<String> textFieldsValue = [];

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(hintText: "Name"),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              textFieldsValue.add(value);
              return null;
            },
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(hintText: "Email"),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter an email';
              } else if (!RegExp(
                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                  .hasMatch(value)) {
                return 'Please Enter a valid email';
              }
              textFieldsValue.add(value);
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(hintText: "Age"),
            keyboardType: TextInputType.number,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter Age';
              }
              final n = num.tryParse(value);
              if (n == null) {
                return '"$value" is not a valid number';
              }
              if (n > 120) {
                return 'Age cannot be greater than 120';
              }
              textFieldsValue.add(value);
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // Validate returns true if the form is valid, or false otherwise.
                if (_formKey.currentState!.validate()) {
                  var message = '';
                  for (String value in textFieldsValue) {
                    message = '$message $value';
                  }

                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text(message)));
                }
              },
              child: Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}
