import 'package:flutter/material.dart';

class Submit extends StatefulWidget {
  @override
  _SubmitState createState() => _SubmitState();
}

class _SubmitState extends State<Submit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Text("Received data"),
          ),
          ElevatedButton(
              onPressed: () => Navigator.pop(context), child: Text("Go Back"))
        ],
      ),
    );
  }
}
