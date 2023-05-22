import 'package:flutter/material.dart';

import 'package:flutter_github_task/screens/home/widgets/repo_card.dart';
import 'package:flutter_github_task/service/get_data.dart';
// import 'package:flutter_github_task/service/getdata.dart';

// import '../../model/Items.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isloading = false;

  @override
  void initState() {
    super.initState();
    appInit();
  }

  void appInit() async {
    setState(() {
      _isloading = true;
    });

    await getData();
    setState(() {
      _isloading = false;
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isloading == true
          ? const Center(
              child: SizedBox(
                height: 60,
                width: 60,
                child: CircularProgressIndicator(),
              ),
            )
          : ListView.builder(
              itemCount: itemsFromApi!.items!.length,
              itemBuilder: (context, index) {
                return RepoCard(
                  description: itemsFromApi!.items![index].description!,
                  name: itemsFromApi!.items![index].name!,
                  avatarUrl: itemsFromApi!.items![index].owner!.avatarUrl!,
                  language: itemsFromApi!.items![index].language!,
                  stargazersCount: itemsFromApi!.items![index].stargazersCount!,
                  topics: itemsFromApi!.items![index].topics!,
                );
              }),
    );
  }
}
