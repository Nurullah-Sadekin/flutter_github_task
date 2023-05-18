import 'package:flutter/material.dart';
import 'package:flutter_github_task/method/getdata.dart';
import 'package:flutter_github_task/screens/home/widgets/repo_card.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
 @override
 void initState() {
    // TODO: implement initState
   getRepositoryfromapi();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Github Flutter Repo'),
      ),
      body:
      ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(child: const RepoCard(),onTap: (){getRepositoryfromapi();},);
          }),
    );
  }
}
