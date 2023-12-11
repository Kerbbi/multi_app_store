import 'package:flutter/material.dart';

import '../widgets/fake_search.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: FakeSearch(),
          bottom: const TabBar(
            isScrollable: true,
            indicatorColor: Colors.amber,
            indicatorWeight: 4,
            tabs: [
              RepeatedTab(
                label: 'Women',
              ),
              RepeatedTab(
                label: 'Men',
              ),
              RepeatedTab(
                label: 'Shoes',
              ),
              RepeatedTab(
                label: 'Accessories',
              ),
              RepeatedTab(
                label: 'Bags',
              ),
              RepeatedTab(
                label: 'Kids',
              ),
              RepeatedTab(
                label: 'Beauty',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text('women screen'),
            ),
            Center(
              child: Text('men screen'),
            ),
            Center(
              child: Text('shoes screen'),
            ),
            Center(
              child: Text('Accessories screen'),
            ),
            Center(
              child: Text('Bags screen'),
            ),
            Center(
              child: Text('Kids screen'),
            ),
            Center(
              child: Text('Beauty screen'),
            ),
          ],
        ),
      ),
    );
  }
}

class RepeatedTab extends StatelessWidget {
  final String label;
  const RepeatedTab({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(
        label,
        style: const TextStyle(color: Colors.grey),
      ),
    );
  }
}
