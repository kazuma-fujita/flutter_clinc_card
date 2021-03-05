// @dart=2.9

import 'package:flutter/material.dart';
import 'package:flutter_clinc_card/favorite_list_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'favorite_list_view.dart';

final favoriteListViewModelProvider = StateNotifierProvider.autoDispose(
  (ref) => FavoriteListViewModel(),
);

void main() {
  runApp(
    ProviderScope(
      child: FavoriteListView(),
    ),
  );
}
