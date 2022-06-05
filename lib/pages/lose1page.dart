import 'package:flutter/material.dart';
import 'package:kbcgame/pages/variable.dart';

class LosePage extends StatefulWidget {
  const LosePage({Key? key}) : super(key: key);

  @override
  _LosePageState createState() => _LosePageState();
}

class _LosePageState extends State<LosePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/lose.png",height: 100,),
            const Text(
              "oops!",
              style: TextStyle(
                color: Colors.redAccent,
                fontSize: 25,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            const Text(
              "Sorry you are lose",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xffd6d6d6),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10)
              ),
              onPressed: () {
                setState(() {
                  i = 0;
                  rupees = 0;
                  Navigator.of(context).pushNamed("/");
                });
              },
              child: const Text("Try again", style: TextStyle(color: Colors.black),),
            ),
          ],
        ),
      ),
    );
  }
}
