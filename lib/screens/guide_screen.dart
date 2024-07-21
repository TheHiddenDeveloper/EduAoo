import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class GuideScreen extends StatefulWidget {
  const GuideScreen({super.key});

  @override
  _GuideScreenState createState() => _GuideScreenState();
}

class _GuideScreenState extends State<GuideScreen> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: 'YTWuFQmQDq0', // Replace with your YouTube video ID
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Composting Guide'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'What is Composting?',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Composting is a natural process of recycling organic material such as leaves and vegetable scraps into a rich soil amendment known as compost. This process involves the breakdown of organic material by microorganisms, resulting in a nutrient-rich substance that can be used to enrich garden soil.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              'Benefits of Composting',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              '1. Reduces waste sent to landfills\n'
                  '2. Enriches soil, helping retain moisture and suppress plant diseases\n'
                  '3. Reduces the need for chemical fertilizers\n'
                  '4. Encourages the production of beneficial bacteria and fungi\n'
                  '5. Reduces methane emissions from landfills and lowers your carbon footprint',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              'How to Make Compost',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              '1. Choose a Compost Bin: You can buy a compost bin or make one yourself. Ensure it has good air circulation.\n'
                  '2. Gather Materials: Collect green materials (e.g., fruit scraps, vegetable peels) and brown materials (e.g., dry leaves, cardboard).\n'
                  '3. Layer Materials: Alternate layers of green and brown materials. This helps balance the carbon-to-nitrogen ratio.\n'
                  '4. Maintain Moisture: Keep the compost moist but not too wet. Water it occasionally if it becomes dry.\n'
                  '5. Turn the Pile: Aerate the compost by turning it every few weeks. This helps speed up the decomposition process.\n'
                  '6. Harvest the Compost: After a few months, the compost should be dark, crumbly, and ready to use in your garden.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              'Composting Video Guide',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
              onReady: () {
                print('Player is ready.');
              },
            ),
          ],
        ),
      ),
    );
  }
}
