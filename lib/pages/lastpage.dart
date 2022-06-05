import 'package:flutter/material.dart';
import 'package:kbcgame/pages/variable.dart';

class LastPage extends StatefulWidget {
  const LastPage({Key? key}) : super(key: key);

  @override
  _LastPageState createState() => _LastPageState();
}

class _LastPageState extends State<LastPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/win.png"),
            const Text(
              "Congratulations",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            const Text(
              "Game over",
              style: TextStyle(
                fontSize: 20,
                color: Colors.red,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.grey,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              ),
              onPressed: (){
                setState(() {
                  i = 0;
                  Navigator.of(context).pushNamed("/");
                });
              },
              child: const Text("Restart"),
            ),
          ],
        ),
      ),
    );
  }
}
