import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Textvalidate extends StatefulWidget {
  const Textvalidate({Key? key}) : super(key: key);

  @override
  State<Textvalidate> createState() => _TextvalidateState();
}

class _TextvalidateState extends State<Textvalidate> {
  final _formKey = GlobalKey<FormState>();
  // final _formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              TextFormField(
                validator: (validatevalue1) {
                  if (validatevalue1 != null && validatevalue1.length > 5) {
                    return null;
                  } else {
                    return "errror";
                  }
                },
              ),
              TextFormField(
                validator: (validatorvalue2) {
                  if (validatorvalue2 != null && validatorvalue2.length > 6) {
                    return null;
                  } else {
                    return "it is <6";
                  }
                },
              ),
              ElevatedButton(
                  onPressed: () {
                    // validate();
                    // if(_formKey.currentState!.validate()){}
                    _formKey.currentState!
                        .validate(); // it checks that the given value are validating or not.

                    if (_formKey.currentState!.validate()) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Page1()));
                    }
                  },
                  child: Text("submit")),

               Common(label: 'h', validators: (String? val) {
                 if (val != null && val.length > 6) {
                   return null;
                 } else {
                   return "it is <6";
                 }
               },

              ),

              Common(label: 'o', validators: (String? val) {
                if (val != null && val.length > 3) {
                return null;
              } else {
                return "it is <3";
              }
              },

              ),


            ],
          ),
        ),
      ),
    );
  }

// void validate() {
//   if(_formKey.currentState!.validate()){
//
//   }
// }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.red,
          child: const Text(
            "Welcome to this page",
            style: TextStyle(color: Colors.black54, fontSize: 30),
          ),
        ),
      ),
    );
  }
}

class Common extends StatelessWidget {
  final String label;
final Function(String?)? validators;
  const Common({Key? key, required this.label, required this.validators}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(labelText: label),
      validator: validators as String? Function(String?)?,

    );
  }
}
