import 'package:flutter/material.dart';
import 'feed_screen.dart';
import 'guide_screen.dart';
import 'locator_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  final List<Widget> _tabs = [
    const FeedScreen(),
    const GuideScreen(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('EduApp'),
          bottom: TabBar(
            controller: _tabController,
            tabs: const [
              Tab(text: 'Feed'),
              Tab(text: 'Guide'),
            ],
          ),
        ),
        body: _currentIndex == 1
            ? const LocatorScreen()
            : TabBarView(
          controller: _tabController,
          children: _tabs,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            if (index == 1) {
              setState(() {
                _currentIndex = index;
              });
            } else {
              onTabTapped(index);
            }
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.location_on),
              label: 'Locator',
            ),
          ],
        ),
      ),
    );
  }
}
