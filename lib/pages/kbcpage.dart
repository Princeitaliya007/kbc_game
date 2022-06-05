import 'package:flutter/material.dart';
import 'package:kbcgame/models/kbc_model.dart';
import 'package:kbcgame/pages/variable.dart';
import 'package:kbcgame/kbcquiz_list.dart';

class KbcGame extends StatefulWidget {
  const KbcGame({Key? key}) : super(key: key);

  @override
  _KbcGameState createState() => _KbcGameState();
}

class _KbcGameState extends State<KbcGame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: IndexedStack(
                index: i,
                alignment: Alignment.center,
                children: KbcList.map((e) => topDivision(e)).toList(),
              ),
            ),
            Expanded(
              child: IndexedStack(
                index: i,
                alignment: Alignment.center,
                children: KbcList.map((e) => bottomDivision(e)).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget bottomDivision(KbcQuiz a) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: a.col2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 170,
                child: ElevatedButton(
                  child: Text(
                    "A. ${a.a1}",
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      if (a.ans == "A") {
                        rupees += 1000;
                        Navigator.of(context).pushNamed("winpage");
                      } else {
                        i = 0;
                        Navigator.of(context).pushNamed("losepage");
                      }
                    });
                  },
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                width: 170,
                child: ElevatedButton(
                  child: Text(
                    "B. ${a.a2}",
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      if (a.ans == "B") {
                        rupees += 1000;
                        Navigator.of(context).pushNamed("winpage");
                      } else {
                        i = 0;
                        Navigator.of(context).pushNamed("losepage");
                      }
                    });
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 170,
                child: ElevatedButton(
                  child: Text(
                    "C. ${a.a3}",
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      if (a.ans == "C") {
                        rupees += 1000;
                        Navigator.of(context).pushNamed("winpage");
                      } else {
                        i = 0;
                        Navigator.of(context).pushNamed("losepage");
                      }
                    });
                  },
                ),
              ),
             const SizedBox(
                width: 20,
              ),
              Container(
                width: 170,
                child: ElevatedButton(
                  child: Text(
                    "D. ${a.a4}",
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      if (a.ans == "D") {
                        rupees += 1000;
                        Navigator.of(context).pushNamed("winpage");
                        if(a.id == 10){
                          Navigator.of(context).pushNamed("lastpage");
                        }
                      } else {
                        i = 0;
                        Navigator.of(context).pushNamed("losepage");
                      }
                    });
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget topDivision(KbcQuiz k) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: k.col1,
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            height: 50,
            width: 350,
            child: Text(
              k.question,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
