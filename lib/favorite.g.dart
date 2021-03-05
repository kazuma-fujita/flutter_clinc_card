// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Favorite _$_$_FavoriteFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_Favorite', json, () {
    final val = _$_Favorite(
      id: $checkedConvert(json, 'id', (v) => v as int),
      isFavorite: $checkedConvert(json, 'is_favorite', (v) => v as bool),
      images: $checkedConvert(json, 'images',
          (v) => (v as List<dynamic>).map((e) => e as String).toList()),
    );
    return val;
  }, fieldKeyMap: const {'isFavorite': 'is_favorite'});
}

Map<String, dynamic> _$_$_FavoriteToJson(_$_Favorite instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_favorite': instance.isFavorite,
      'images': instance.images,
    };
