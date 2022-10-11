import 'package:flutter/material.dart';

class PractiseRulesEP extends StatefulWidget {
  const PractiseRulesEP({Key? key}) : super(key: key);

  @override
  State<PractiseRulesEP> createState() => _PractiseRulesEPState();
}

class _PractiseRulesEPState extends State<PractiseRulesEP> {
  var text = "";

  TextEditingController _controller = TextEditingController();
  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _email = TextEditingController();

  final _formkey = GlobalKey<FormState>();
   bool _isvisible= false;
  void validate() {
    if(_formkey.currentState!.validate()){
      print('ok');
      print(_username.text);
      print(_password.text);
      print(_email.text);
     Map details={
        "username":_username.text,
       "password":_password.text,
       "email":_email.text,
      };
     print(details);
    }else{
      print("not ok");
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // bottom: AppBar(
        // ),
      ),
      body:
      // Center(
      //   child: Container(
      //     padding: EdgeInsets.all(10),
      //     color: Colors.yellow,
      //     // height: 100,width: 100,
      //
      //     child: Container(
      //       padding: EdgeInsets.all(10),
      //       color: Colors.green,
      //       // height: 50,width: 50,
      //       child: Container(
      //         margin: EdgeInsets.all(10),
      //           color: Colors.pink,
      //           height: 100,width: 100,
      //
      //       ),
      //     ),
      //   ),
      // ),
      Center(
        child: SingleChildScrollView(
          child: Column(
            children: [

              Flex(direction: Axis.horizontal, children: [
                Expanded(
                  child: Container(
                    color: Colors.brown,
                    height: 100, width: 150,
                    child: Text("data"),
                  ),
                ),
                // Flexible(child: child)
              ]),


              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Container(
                  //   child: Container(
                  //     color: Colors.pinkAccent,
                  //     height: 100, width: 150,
                  //     child: Text("data"),
                  //   ),
                  // ),
                  Row(
                    children: [
                      Container(

                        child: Expanded(

                          child: Container(
                            color: Colors.pinkAccent,
                            height: 100, width: 150,
                            child: Text("data"),
                          ),
                        ),
                      ),
                    ],
                  ),


                  // const Center(
                  //   child: FittedBox(
                  //     //                  if we use fitted box the result will be in a single line no mateers the lenght of sentence........
                  //     child: Text('jccvxnlx ,zcfcfcfcfcfcfcfcfcfcfcfo,hkjukcmvxnlx'),
                  //   ),
                  // ),
                  // FittedBox(
                  //   child: Container(
                  //     color: Colors.redAccent,
                  //     height: 20, width: 120,
                  //     // width: double.infinity,
                  //   ),
                  // ),
                  //       Expanded(
                  //         // flex: 1,
                  //       child: Container(
                  //         color: Colors.brown,
                  //         height: 20, width: 50,
                  //         child: Text("data"),
                  //       ),
                  // ),
                  //   Container(
                  //     child: Flexible(
                  //     fit: FlexFit.tight,
                  //     child: Container(
                  //       color: Colors.brown,
                  //       height: 20, width: 50,
                  //     ),
                  // ),
                  //   ),

                  // Row(
                  //   children: [

                      // Container(
                      //   color: Colors.red,
                      //   height: 100, width: 150,
                      //   child: Text("data"),
                      // ),
                      //
                      // Spacer(),
                      // Container(
                      //   color: Colors.red,
                      //   height: 100, width: 150,
                      //   child: Text("data"),
                      // ),
                      // Spacer(flex: 5,),


                       // Spacer(flex: 3,),
                    //   Text("data"),
                    // Spacer(),
                    //   Text("data1"),
                    //   Spacer(flex: 2,),
                    //   Text("data2"),
                      // Spacer(flex: 2,),
                      // Text("data"),
                      // Spacer(flex: 3,),
                      // Text("data"),

                  //   ],
                  // ),



                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minWidth: 950,maxWidth: 1200,
                      ),
                      child: Container(
                        width: 500,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              color: Colors.red,
                              height: 100, width: 150,
                              child: Text("data"),
                            ),Container(
                              color: Colors.pinkAccent,
                              height: 100, width: 150,
                              child: Text("data"),
                            ),Container(
                              color: Colors.pinkAccent,
                              height: 100, width: 150,
                              child: Text("data"),
                            ),Container(
                              color: Colors.pinkAccent,
                              height: 100, width: 150,
                              child: Text("data"),
                            ),Container(
                              color: Colors.pinkAccent,
                              height: 100, width: 150,
                              child: Text("data"),
                            ),Container(
                              color: Colors.pinkAccent,
                              height: 100, width: 150,
                              child: Text("data"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.pinkAccent,
                          height: 100, width: 150,
                          child: Text("data"),
                        ),
                      ), Flexible(
                        fit: FlexFit.loose,
                        child: Container(
                          color: Colors.green,
                          height: 100, width: 150,
                          child: Text("data"),
                        ),
                      ),
                      Container(
                        child: Text(
                          "dsvjhu",
                          style: TextStyle(fontSize: 10),
                        ),
                        color: Colors.green,
                      ),
                      Container(
                        color: Colors.red,
                        child: const Text(
                            "good Boy", style: TextStyle(fontSize: 20)),
                      )
                    ],
                  ),

                  ConstrainedBox(
                    constraints: BoxConstraints(
                        minHeight: 50,
                        minWidth: 50,
                        maxHeight: 100,
                        maxWidth: 100),
                    child:
                    Container(
                        color: Colors.pink, height: 10, child: Text("data")),
                  ),

                  UnconstrainedBox(
                    textDirection: TextDirection.ltr,
                    constrainedAxis: Axis.horizontal,
                    child: Container(
                        color: Colors.yellow,
                        height: 70,
                        width: 4050,
                        child: Text(
                          "data",
                          style: Theme
                              .of(context)
                              .textTheme
                              .headline2,
                        )),
                  ),
                  // OverflowBox(
                  //   minWidth: 0.0,
                  //   minHeight: 0.0,
                  //   maxWidth: double.infinity,
                  //   maxHeight: double.infinity,
                  //   child: Container(color: Colors.red, width: 4000, height: 50),
                  // ),
                  Container(
                      color: Colors.red, width: double.infinity, height: 50),
                  Container(
                    color: Colors.green,
                    width: double.infinity,
                    height: 30,
                  ),
                  LimitedBox(
                    maxHeight: 50,
                    child: Container(
                        color: Colors.lightBlue,
                        width: double.infinity,
                        height: 500),
                  ),

                  Text("Welcome ${text}", style: TextStyle(color: Colors.red)),
                  TextFormField(
                    controller: _controller,
                    decoration:
                    InputDecoration(
                        labelText: "Name", hintText: "enter your name"),
                  ),

                  Table(
                    border: TableBorder.all(),

                    children: [
                      TableRow(children: [
                        TableCell(child: Column(
                          children: [
                            Text('javatpoint'),
                          ],
                        )),
                        TableCell(child: Column(
                          children: [
                            Text('javatpoint'),
                          ],
                        )),

                        TableCell(
                          child: Text('Flutter'),
                        ),
                        TableCell(child: Text('Android')),
                        TableCell(child: Text('MySQL')),
                      ]),
                    ],
                  ),


                  TextButton(
                    onLongPress: () {
                      setState(() {
                        // text=_controller.text;
                        text = "";
                      });
                    },
                    onPressed: () {
                      setState(() {
                        text = _controller.text;
                      });
                    },
                    child: Icon(Icons.refresh),
                  ),

                  // TextButton(
                  //   onPressed: () {
                  //     setState(() {
                  //       // text=_controller.text;
                  //       text = "";
                  //     });
                  //   },
                  //   child: Icon(Icons.refresh),
                  // ),

                  // TextFormField(
                  //   // The validator receives the text that the user has entered.
                  //   validator: (value) {
                  //     if (value == null || value.isEmpty) {
                  //       return 'Please enter some text';
                  //     }
                  //     return null;
                  //   },
                  // ),
                  // TextButton(onPressed: (){}, child: Text("click")),

                  TextButton(onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("processing data....")));
                  }, child: Text("snack")),


                  Form(
                    key: _formkey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _username,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "name",
                              hintText: "enter your name"
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'enter text';
                            }
                            return null;
                          },
                        ),
SizedBox(height: 20,),

                        TextFormField(
                          obscureText: !_isvisible,
                          // autovalidateMode: true,
                          maxLength: 10,
                          keyboardType: TextInputType.number,
                          controller: _password,
                          decoration:  InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "password",
                              hintText: "enter your password",
                            suffixIcon: IconButton(
                              onPressed: (){
                              setState(() {
                              _isvisible=!_isvisible;
                            });},
                              icon: _isvisible
                                ? Icon(Icons.visibility,color: Colors.blue,)
                                : Icon(Icons.visibility_off,color: Colors.blueAccent,),)

                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'enter password';
                            }else if(value.length<6){
                              return "enter more than 8 characters.";
                            }
                            return null;
                          },
                        ),
SizedBox(height: 20,),

                        TextFormField(

                          // maxLength: 10,
                          keyboardType: TextInputType.emailAddress,
                          controller: _email,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),

                              labelText: "email",
                              hintText: "enter your email"
                          ),
                          validator: (email) {
                            if(email!.isEmpty){
                                return "enter email";
                            }else{

                            }
                            return null;

                          }
                        ),




                        ElevatedButton(onPressed: () {
                          validate();
                        }, child: const Text("login")),


                      ],
                    ),
                  ),

                  // Container(child: SnackBar(content: Text("processing data"))),

                  // OverflowBox(minHeight: 50,minWidth: 0,maxHeight: double.infinity,maxWidth: double.infinity,
                  //   child:Container(color: Colors.black,width: 500,height: 40,),)
                ],
              ),


            ],
          ),
        ),
      ),
      // Container(color: Colors.green, width:double.infinity, height: 50),
      // UnconstrainedBox(child: Container(color: Colors.red, width:5000, height: 50)),
      // Container(color: Colors.red, width: 4000, height: 50,child: Container(
      //   color: Colors.green,width: 100,
      //   height: 20,
      // child: Text("data"),
      // ),),
      // UnconstrainedBox(child: Container(color: Colors.red, width:500, height: 50)),
      // Center(
      //   child:
      // Container(color: Colors.red, width: 4000, height: 50),
      // OverflowBox(
      //     minWidth: 0.0,
      //     minHeight: 0.0,
      //     maxWidth: double.infinity,
      //     maxHeight: double.infinity,
      //     child: Container(color: Colors.red, width: 4000, height: 50),
      //   ),
      // UnconstrainedBox(textDirection: TextDirection.ltr,
      //   constrainedAxis: Axis.vertical,
      //
      // Container(
      //        color: Colors.yellow,height: 200,width: 4050,
      //        child: Text("data",style: Theme.of(context).textTheme.headline2,)),
      //     SingleChildScrollView(

    );
  }

}