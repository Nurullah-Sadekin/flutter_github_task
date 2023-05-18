import 'package:flutter/material.dart';
import 'package:flutter_github_task/screens/home/widgets/tags.dart';
class RepoCard extends StatelessWidget {
  const RepoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.only(bottom: 20,left: 25, right: 25),
      child: Container(
        padding: EdgeInsets.all(20),
        // width: MediaQuery.of(context).size.width*0.9,
        decoration: BoxDecoration(border: Border.all(color: Colors.black)),
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Row( mainAxisAlignment: MainAxisAlignment.start,
            children: [
            Image.asset('assets/images/png/logo.png',height: 30,width: 30,),
           const SizedBox(width: 10,),
            const Text('Project Name'),
          ],
          ),
          const  SizedBox(height: 10,),
          const Text('description'),
            const  SizedBox(height: 10,),
          const Row(
            children: [Tags(),],
          ),
        ],),),
    );
  }
}
