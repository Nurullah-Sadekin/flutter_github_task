// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class RepoCard extends StatelessWidget {
  final String name;
  final String description;
  final String avatarUrl;
  final int stargazersCount;
  final String language;
  final List<String> topics;
  const RepoCard(
      {Key? key,
      required this.name,
      required this.description,
      required this.avatarUrl,
      required this.stargazersCount,
      required this.language,
      required this.topics})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, left: 25, right: 25),
      child: Container(
        padding: const EdgeInsets.all(20),
        // width: MediaQuery.of(context).size.width*0.9,
        decoration: BoxDecoration(border: Border.all(color: Colors.black)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.network(
                      avatarUrl,
                      height: 30,
                      width: 30,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(name),
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.star_border,
                      color: Colors.black,
                      size: 30,
                    ),
                    Text((stargazersCount / 1000).toString())
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(description),
            const SizedBox(
              height: 10,
            ),
            Text('Language: $language'),
            const SizedBox(
              height: 10,
            ),
            // Row(
            //   children: [
            //     ListView.builder(
            //       itemCount: topics.length,
            //       itemBuilder: (context, index) => Container(
            //         decoration: BoxDecoration(
            //             color: Colors.black12,
            //             borderRadius: BorderRadius.circular(15)),
            //         child: Padding(
            //           padding: const EdgeInsets.all(5.0),
            //           child: Text(topics[index]),
            //         ),
            //       ),
            //     )
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
