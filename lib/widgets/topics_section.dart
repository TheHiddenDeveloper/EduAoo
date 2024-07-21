import 'package:flutter/material.dart';

class TopicsSection extends StatelessWidget {
  final List<String> topics = [
    'Plastic Recycling',
    'Composting Techniques',
    'E-Waste Management',
  ];

  TopicsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // ignore: prefer_const_constructors
          Text('Topics', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          ListView.builder(
            shrinkWrap: true,
            itemCount: topics.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(topics[index]),
              );
            },
          ),
        ],
      ),
    );
  }
}
