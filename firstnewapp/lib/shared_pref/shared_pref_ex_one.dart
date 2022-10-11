import 'package:firstnewapp/shared_pref/homepage.dart';
import 'package:firstnewapp/shared_pref/welcomescreen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefExOne extends StatelessWidget {
  const SharedPrefExOne({Key? key}) : super(key: key);

  // SharedPreferences preferences;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
            onPressed: () async{
              bool visitingflag = await getvisitingflag();
              setvisitingflag();

              if (visitingflag == true) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => HomePage()));
              } else {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => WelcomeScreen()));
              }
            },
            child: const Text("click")),
      ),
    );
  }
}
  setvisitingflag() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setBool('alreadyvisited', true);
  }

  getvisitingflag() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    bool alreadyvisited = preferences.getBool('alreadyvisited') ?? false;
    return alreadyvisited;
  }