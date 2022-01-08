import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final String? params;
  final String? extra;

  const HomeScreen({Key? key, this.params, this.extra}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
            Column(
              children: [
                Text("Home Screen With Params : ${widget.params ?? "No Params"}"),
                Text("Home Screen With Extras : ${widget.extra ?? "No Extras"}"),
              ],
            ),
      ),
    );
  }
}
