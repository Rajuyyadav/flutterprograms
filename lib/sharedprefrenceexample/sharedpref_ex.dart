import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefExample extends StatefulWidget {
  const SharedPrefExample({Key? key}) : super(key: key);

  @override
  State<SharedPrefExample> createState() => _SharedPrefExampleState();
}

class _SharedPrefExampleState extends State<SharedPrefExample> {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  int a = 0;
  String? name = "";

  @override
  void initState() {
    super.initState();
    getavalue().then((value) => setState(() {}));     // here this is used to update the newest value of a integer.

  }

//==========================================aaaaaaaaa
  Future getavalue() async {
    final SharedPreferences pref = await _prefs;
    // setState(() {
    a = (pref.getInt("a") ?? -1) + 1;
    // });
    name = pref.getString("name") ?? " ";
    print("get+___________________${pref.getString("name")}");
    print("get+_______a___${pref.getInt("a")}");
  }

  setavalue() async {
    final SharedPreferences pref = await _prefs;
    pref.setInt("a", a);
    pref.setString("name", "rajesh");
    print("set+________+++++++++++++____${pref.getString("name")}");
    print("set+______a___${pref.getInt("a")}");
  }

  removenethod() async {
    final SharedPreferences pref = await _prefs;
    await pref.remove("name");
    await pref.remove("a");
    print("get+___________________${pref.getString("name")}");
    print("get+________a______${pref.getInt("a")}");
    getavalue();
    setState(() {});
  }

  void update() {
    setState(() {


      setavalue();
      getavalue();
    });
  }
int num = 1;

//=======================================aaaaaaaaaaaaaaaa
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            children: [
              Text(
                //           ============Text
                "+++++++++${name}",
                style: Theme.of(context).textTheme.headline3,
              ),
              Text(
                //           ============Text
                "count_data a :$a",
                style: Theme.of(context).textTheme.headline3,
              ),
              TextButton(
                  //           ============TB2
                  onPressed: update,
                  child: Text(
                    "data  a ",
                    style: Theme.of(context).textTheme.headline5,
                  )),
              TextButton(
                  //           ============TB2
                  onPressed: removenethod,
                  child: Text(
                    "remove  data  a ",
                    style: Theme.of(context).textTheme.headline5,
                  )),

Container(

  child: Text("data"),
),



            ],
          ),
        ),
      ),
    );
  }
}

// FutureBuilder(
//     future: SharedPreferences.getInstance(),
//
//     builder: (ctx,AsyncSnapshot<SharedPreferences> snapshot){
//   return Text(snapshot.data!.getInt("countInt").toString());
//
// })
