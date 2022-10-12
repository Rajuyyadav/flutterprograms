import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PNC extends StatefulWidget {
  PNC({Key? key}) : super(key: key);

  @override
  State<PNC> createState() => _PNCState();
}

class _PNCState extends State<PNC> {
  final TextEditingController _controller = TextEditingController();

  String name = "";

  final _formkey = GlobalKey<FormState>();
  void validate() {
    if (_formkey.currentState!.validate()) {
      print("okk");
    } else {
      print("not okk");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            decoration: InputDecoration(border: OutlineInputBorder()),
            controller: _controller,

            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'enter text';
              }
              return null;
            },

            // validator: (value) {
            //   if (value!.isEmpty || !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            //           .hasMatch(value!)) {
            //     return "enter valid email address.";
            //   }
            //   return null;
            // }
          ),
          SizedBox(
            height: 30,
          ),
          TextFormField(
            decoration: InputDecoration(border: OutlineInputBorder()),
          ),


// const TextField(),

          Text("data"),

          RichText(
              text: const TextSpan(children: [
            TextSpan(
              text: "click",
              style: TextStyle(color: Colors.green, fontSize: 20),
            ),
            // TextSpan(
            //   text: "here",
            //   style: const TextStyle(color: Colors.pink, fontSize: 28),
            //   recognizer: TapGestureRecognizer()..onTap = launchlink,
            // ),
            TextSpan(text: " for flutter.dev")
          ])),
        ],
      ),
    );
  }


}
