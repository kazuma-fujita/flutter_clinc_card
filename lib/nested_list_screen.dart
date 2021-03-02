import 'package:flutter/material.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';

import 'image_slider.dart';

class NestedListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      home: NestedList(),
    );
  }
}

class NestedList extends StatefulWidget {
  @override
  _NestedListState createState() => _NestedListState();
}

class _NestedListState extends State<NestedList> {
  final _currentPageNotifier = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nested List'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 16),
        itemBuilder: _buildVerticalItem,
      ),
    );
  }

  Widget _buildImageView(BuildContext context, int horizontalIndex) {
    final imageUrl =
        'https://source.unsplash.com/random/370x250?sig=$horizontalIndex';
    return Image.network(
      imageUrl,
      fit: BoxFit.fill,
    );
  }

  Widget _buildVerticalItem(BuildContext context, int verticalIndex) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: SizedBox(
        height: 640,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ImageSlider(imageCount: 5),
            const Text(
              'Hey',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text(
              'HEHEY',
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
            _buildHorizontalItem(context, verticalIndex),
            // _buildImageSlider(),
          ],
        ),
      ),
    );
  }

  Widget _buildHorizontalItem(BuildContext context, int verticalIndex) {
    return SizedBox(
      height: 240,
      child: PageView.builder(
        controller: PageController(viewportFraction: 0.8),
        itemBuilder: (context, horizontalIndex) =>
            _buildHorizontalView(context, verticalIndex, horizontalIndex),
      ),
    );
  }

  Widget _buildHorizontalView(
      BuildContext context, int verticalIndex, int horizontalIndex) {
    final imageUrl =
        'https://source.unsplash.com/random/275x240?sig=$verticalIndex$horizontalIndex';
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Card(
        child: Image.network(imageUrl),
      ),
    );
  }
}
