import 'package:flutter/material.dart';

import '../minor_screens/search.dart';

class FakeSearch extends StatelessWidget {
  const FakeSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const SearchScreen()));
      },
      child: Container(
        height: 35,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.amber,
            width: 1.4,
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  'What are you looking for?',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(25)),
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Search',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
