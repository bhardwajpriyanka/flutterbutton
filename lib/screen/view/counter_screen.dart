import 'package:flutter/material.dart';
import 'package:flutterbutton/screen/provider/counter_provider.dart';
import 'package:provider/provider.dart';
class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:Scaffold(
          appBar: AppBar(
            title: Text("Counter app"),
            centerTitle: true,
           ),
           body: Center(
             child: Consumer<Counderprovider>(
              builder: (context, value, child) => Text("${value.i}",style: TextStyle(fontSize: 35),),
             ),
          ),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                child: Icon(
                  Icons.add
                ),
                onPressed: (){
                  Provider.of<Counderprovider>(context,listen: false).increment();
                },
              ),
              SizedBox(width: 15),
              FloatingActionButton(
                child: Icon(
                    Icons.remove
                ),
                onPressed: (){
                  Provider.of<Counderprovider>(context,listen: false).decrement();
                },
              ),
              SizedBox(width: 15,
              height: 15),
              FloatingActionButton(
                child: Text("2x"),
                onPressed: (){
                  Provider.of<Counderprovider>(context,listen: false).two();
                },
              ),
              SizedBox(width: 15),
              FloatingActionButton(
                child: Text("3x"),
                onPressed: (){
                  Provider.of<Counderprovider>(context,listen: false).three();
                },
              ),
              SizedBox(width: 15),
              FloatingActionButton(
                child: Text("4x"),
                onPressed: (){
                  Provider.of<Counderprovider>(context,listen: false).four();
                },
              ),
            ],
          ),
        ),
    );
  }
}
