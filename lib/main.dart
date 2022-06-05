import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kbcgame/pages/kbcpage.dart';
import 'package:kbcgame/pages/lastpage.dart';
import 'package:kbcgame/pages/lose1page.dart';
import 'package:kbcgame/pages/win1page.dart';

void main() {
  runApp(
    MaterialApp(
      routes: {
        "/" : (context) => KbcGame(),
        "winpage" : (context) => WinPage1(),
        "losepage" : (context) => LosePage(),
        "lastpage" : (context) => LastPage(),
      },
    ),
  );
}

