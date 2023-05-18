import 'package:flutter/material.dart';
import 'package:flutter_github_task/screens/repo_card.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
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
            return const RepoCard();
          }),
    );
  }
}
