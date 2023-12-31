import 'package:flutter/material.dart';
import 'package:pick_up_app/widgets/fake_search.dart';

List<ItemsData> items = [
  ItemsData(label: 'women'),
  ItemsData(label: 'men'),
  ItemsData(label: 'shoes'),
  ItemsData(label: 'accessories'),
  ItemsData(label: 'bags'),
  ItemsData(label: 'kids'),
  ItemsData(label: 'beauty'),
];

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  final PageController _pageController = PageController();
  @override
  void initState() {
    for (var element in items) {
      element.isSelected = false;
    }
    setState(() {
      items[0].isSelected = true;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const FakeSearch(),
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: sideNavigator(size),
          ),
          Positioned(bottom: 0, right: 0, child: categoryView(size)),
        ],
      ),
    );
  }

  Widget sideNavigator(Size size) {
    return SizedBox(
      height: size.height * 0.8,
      width: size.width * 0.2,
      child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                _pageController.animateToPage(index,
                    duration: const Duration(milliseconds: 100),
                    curve: Curves.bounceInOut);
              },
              child: Container(
                  height: 100,
                  color: items[index].isSelected == true
                      ? Colors.white
                      : Colors.grey.shade300,
                  child: Center(
                    child: Text(
                      style: const TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                      items[index].label,
                    ),
                  )),
            );
          }),
    );
  }

  Widget categoryView(Size size) {
    return Container(
      height: size.height * 0.8,
      width: size.width * 0.8,
      child: PageView(
        controller: _pageController,
        scrollDirection: Axis.vertical,
        onPageChanged: (value) {
          for (var element in items) {
            element.isSelected = false;
          }
          setState(() {
            items[value].isSelected = true;
          });
        },
        children: const [
          Center(
            child: Text('women category'),
          ),
          Center(
            child: Text('men category'),
          ),
          Center(
            child: Text('shoes category'),
          ),
          Center(
            child: Text('accessories category'),
          ),
          Center(
            child: Text('bags category'),
          ),
          Center(
            child: Text('kids category'),
          ),
          Center(
            child: Text('beauty category'),
          ),
        ],
      ),
    );
  }
}

class ItemsData {
  String label;
  bool isSelected;
  ItemsData({required this.label, this.isSelected = false});
}
