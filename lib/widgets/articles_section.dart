import 'package:flutter/material.dart';

class ArticlesSection extends StatelessWidget {
  final List<String> articles = [
    'Recycling 101: How to Get Started',
    'The Benefits of Composting at Home',
    'Reducing Waste: Tips and Tricks',
  ];

  ArticlesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text('Articles', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          ListView.builder(
            shrinkWrap: true,
            itemCount: articles.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(articles[index]),
              );
            },
          ),
        ],
      ),
    );
  }
}
