import 'package:flutter/material.dart';
import 'package:flutter_clinc_card/upsert_clinic_card.dart';
import 'package:like_button/like_button.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'image_slider.dart';

class Const {
  static const routeNameUpsertClinicCard = '/upsert-clinic-card';
}

class NestedListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      routes: <String, WidgetBuilder>{
        Const.routeNameUpsertClinicCard: (BuildContext context) =>
            UpsertClinicCard(),
      },
      home: NestedList(),
    );
  }
}

class NestedList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Clinic Card List'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 16),
        itemBuilder: _buildVerticalItem,
      ),
    );
  }

  Widget _buildVerticalItem(BuildContext context, int verticalIndex) {
    return SizedBox(
      height: 560,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            // お気に入りボタンを画像の右上に表示
            child: Stack(
              children: <Widget>[
                const ImageSlider(imageCount: 5),
                // お気に入りボタン位置
                Positioned(
                  top: 24,
                  right: 24,
                  child: LikeButton(
                    key: Key(verticalIndex.toString()),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Hey',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          _buildHorizontalItem(context, verticalIndex),
          // _buildImageSlider(),
        ],
      ),
    );
  }

  Widget _buildHorizontalItem(BuildContext context, int verticalIndex) {
    return SizedBox(
      height: 240,
      child: PageView.builder(
        // viewportFractionで隣同士の要素間隔割合を調整
        controller: PageController(viewportFraction: 0.9),
        itemBuilder: (context, horizontalIndex) =>
            // _buildHorizontalView(context, verticalIndex, horizontalIndex),
            ClinicCardWidget(),
      ),
    );
  }
}

class ClinicCardWidget extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final isPushed = useState<bool>(false);
    return Padding(
      // 隣同士の要素間隔を調整
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: AnimatedPadding(
        duration: const Duration(milliseconds: 80),
        padding: EdgeInsets.all(isPushed.value ? 16 : 0),
        child: GestureDetector(
          onTapDown: (TapDownDetails downDetails) {
            isPushed.value = true;
          },
          onTap: () {
            isPushed.value = false;
            Navigator.pushNamed(context, Const.routeNameUpsertClinicCard);
          },
          onTapCancel: () {
            isPushed.value = false;
          },
          child: Card(
            shape: RoundedRectangleBorder(
              side: const BorderSide(color: Colors.black12, width: 1),
              borderRadius: BorderRadius.circular(16),
            ),
            // clipBehavior: Clip.antiAliasWithSaveLayer,
            elevation: 2,
            // margin: EdgeInsets.zero,
            child: Row(
              children: [
                const Spacer(),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Expanded(
                        flex: 1,
                        child: Center(
                          child: Text(
                            '診察券',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          '診察券番号',
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          '次回予約日時メモ',
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          '前回受付日時',
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
