import 'package:flutter/material.dart';
import 'package:kbcgame/pages/variable.dart';

class WinPage1 extends StatefulWidget {
  const WinPage1({Key? key}) : super(key: key);

  @override
  _WinPage1State createState() => _WinPage1State();
}

class _WinPage1State extends State<WinPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/win.png",height: 100,),
            const Text(
              "Your answer is correct",
              style: TextStyle(
                fontSize: 25,
                color: Colors.green,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            const Text(
              "You won",
              style: TextStyle(
                fontSize: 20,
                color: Colors.blueAccent,
              ),
            ),
            Text(
              "$rupees",
              style: TextStyle(fontSize: 17, color: Colors.greenAccent),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 40,vertical: 10),
                primary: Color(0xffd6d6d6),
              ),
              onPressed: () {
                setState(() {
                  i++;
                  Navigator.of(context).pushNamed("/");
                });
              },
              child: Text("Next", style: TextStyle(color: Colors.black),),
            ),
          ],
        ),
      ),
    );
  }
}
