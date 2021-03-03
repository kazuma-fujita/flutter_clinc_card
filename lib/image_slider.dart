import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({@required this.imageCount});
  final int imageCount;
  @override
  _ImageSliderState createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  final _currentPageNotifier = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _buildImageSlider(),
        _buildCircleIndicator(),
      ],
    );
  }

  Widget _buildImageSlider() {
    return Card(
      // margin: const EdgeInsets.symmetric(horizontal: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      // 画像が四角の角丸からはみ出さない設定
      clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: 8,
      child: SizedBox(
        height: 240,
        child: PageView.builder(
          // controller: PageController(),
          itemCount: widget.imageCount,
          itemBuilder: _buildImageView,
          onPageChanged: (int index) {
            _currentPageNotifier.value = index;
          },
        ),
      ),
    );
  }

  Widget _buildCircleIndicator() {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 8,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: CirclePageIndicator(
          dotColor: Colors.grey,
          selectedDotColor: Colors.white,
          selectedSize: 9,
          itemCount: widget.imageCount,
          currentPageNotifier: _currentPageNotifier,
        ),
      ),
    );
  }

  Widget _buildImageView(BuildContext context, int horizontalIndex) {
    final imageUrl =
        'https://source.unsplash.com/random/370x250?sig=$horizontalIndex';
    return CachedNetworkImage(
      imageUrl: imageUrl,
      progressIndicatorBuilder: (context, url, downloadProgress) => Center(
          child: CircularProgressIndicator(value: downloadProgress.progress)),
      errorWidget: (context, url, dynamic error) =>
          const Center(child: Icon(Icons.error)),
      fit: BoxFit.cover,
    );
  }
}
