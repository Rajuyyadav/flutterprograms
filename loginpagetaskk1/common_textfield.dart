import 'package:flutter/material.dart';

class CommonTextField extends StatelessWidget {
  CommonTextField(
      {Key? key,
      this.hintText,
      this.labelText,
      this.obscureText,
        required this.validator,})
      : super(key: key);
  final String? hintText;
  final bool? obscureText;
  final String? labelText;
  final String? Function(String?)? validator;
  final TextEditingController _controller = TextEditingController();
  final _formkey = GlobalKey<State>();
  // final bool isEmpty;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Form(
        key: _formkey,
        child: TextFormField(
          controller: _controller,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: labelText ?? "Email",
            hintText: hintText ?? 'ramesh',),
          obscureText: obscureText ?? false,
      validator: (val){
            validator?.call(val);
},
//         validator: validator,




// validator: (emaill){
//
//
//             if(_emaill!.isEmpty ||
//                 !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
//                     .hasMatch(_emaill!)){
//               return "enter valid email address.";
//             }
//           },



          // validator: (passs) {
          //   if (passs == null || passs.isEmpty) {
          //     return 'enter password';
          //   }else if(passs.length<6){
          //     return "enter more than 8 characters.";
          //   }
          //   return null;
          // },
        ),
      ),
    );





  }
  String  val(passs){
        if (passs == null || passs.isEmpty) {
          return 'enter password';
        }else if(passs.length<6){
          return "enter more than 8 characters.";
        }
        return "null";

  }
}




// call back functions.
// how to pass the functions from one class to another class.