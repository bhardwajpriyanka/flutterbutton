import 'dart:js';
import 'package:flutterbutton/screen/provider/counter_provider.dart';
import 'package:flutterbutton/screen/view/counter_screen.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
void main()
{
  runApp(
   ChangeNotifierProvider(
     create: (context)=>Counderprovider(),
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(context)=>CounterScreen(),
      },
      )
    )
  );
}