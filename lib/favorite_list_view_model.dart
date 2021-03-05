import 'package:flutter_clinc_card/favorite.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

class FavoriteListViewModel extends StateNotifier<AsyncValue<List<Favorite>>> {
  FavoriteListViewModel() : super(const AsyncValue.loading()) {
    fetchList();
  }

  final demoList = [
    const Favorite(id: 1, isFavorite: false, images: [
      'https://source.unsplash.com/random/370x250?sig=1',
      'https://source.unsplash.com/random/370x250?sig=2',
      'https://source.unsplash.com/random/370x250?sig=3',
    ]),
    const Favorite(id: 2, isFavorite: false, images: [
      'https://source.unsplash.com/random/370x250?sig=4',
      'https://source.unsplash.com/random/370x250?sig=5',
      'https://source.unsplash.com/random/370x250?sig=6',
    ]),
    const Favorite(id: 3, isFavorite: false, images: [
      'https://source.unsplash.com/random/370x250?sig=7',
      'https://source.unsplash.com/random/370x250?sig=8',
      'https://source.unsplash.com/random/370x250?sig=9',
    ]),
    const Favorite(id: 4, isFavorite: false, images: [
      'https://source.unsplash.com/random/370x250?sig=10',
      'https://source.unsplash.com/random/370x250?sig=11',
      'https://source.unsplash.com/random/370x250?sig=12',
    ]),
    const Favorite(id: 5, isFavorite: false, images: [
      'https://source.unsplash.com/random/370x250?sig=13',
      'https://source.unsplash.com/random/370x250?sig=14',
      'https://source.unsplash.com/random/370x250?sig=15',
    ]),
  ];

  Future<void> fetchList() async {
    state = AsyncValue.data(demoList);
  }

  Future<bool> toggleIsFavorite(
      {required int id, required bool isFavorite}) async {
    if (state.data == null) {
      // exception追加
      return isFavorite;
    }
    final toggleFavorite = !isFavorite;
    final currentList = state.data!.value;
    final newList = currentList
        .map((Favorite favorite) => favorite.id == id
            ? favorite.copyWith(isFavorite: toggleFavorite)
            : favorite)
        .toList();
    state = AsyncValue.data(newList);
    return toggleFavorite;
  }
}
