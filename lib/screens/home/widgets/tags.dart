import 'package:flutter/material.dart';
class Tags extends StatelessWidget {
  const Tags({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container( decoration: BoxDecoration( color: Colors.black12,borderRadius: BorderRadius.circular(15)),
     child: Padding(
      padding: const EdgeInsets.all(5.0),
      child: Text('names'),
    ),);
  }
}
