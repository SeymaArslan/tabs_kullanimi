import 'package:flutter/material.dart';

class Sayfa3 extends StatefulWidget {

  @override
  State<Sayfa3> createState() => _Sayfa3State();
}

class _Sayfa3State extends State<Sayfa3> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Sayfa Üç", style: TextStyle(color: Colors.blue, fontSize: 30),),
    );
  }
}
