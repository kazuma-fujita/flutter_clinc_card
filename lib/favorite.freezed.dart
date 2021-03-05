// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'favorite.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Favorite _$FavoriteFromJson(Map<String, dynamic> json) {
  return _Favorite.fromJson(json);
}

/// @nodoc
class _$FavoriteTearOff {
  const _$FavoriteTearOff();

  _Favorite call(
      {required int id,
      required bool isFavorite,
      required List<String> images}) {
    return _Favorite(
      id: id,
      isFavorite: isFavorite,
      images: images,
    );
  }

  Favorite fromJson(Map<String, Object> json) {
    return Favorite.fromJson(json);
  }
}

/// @nodoc
const $Favorite = _$FavoriteTearOff();

/// @nodoc
mixin _$Favorite {
  int get id => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavoriteCopyWith<Favorite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteCopyWith<$Res> {
  factory $FavoriteCopyWith(Favorite value, $Res Function(Favorite) then) =
      _$FavoriteCopyWithImpl<$Res>;
  $Res call({int id, bool isFavorite, List<String> images});
}

/// @nodoc
class _$FavoriteCopyWithImpl<$Res> implements $FavoriteCopyWith<$Res> {
  _$FavoriteCopyWithImpl(this._value, this._then);

  final Favorite _value;
  // ignore: unused_field
  final $Res Function(Favorite) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? isFavorite = freezed,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      isFavorite:
          isFavorite == freezed ? _value.isFavorite : isFavorite as bool,
      images: images == freezed ? _value.images : images as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$FavoriteCopyWith<$Res> implements $FavoriteCopyWith<$Res> {
  factory _$FavoriteCopyWith(_Favorite value, $Res Function(_Favorite) then) =
      __$FavoriteCopyWithImpl<$Res>;
  @override
  $Res call({int id, bool isFavorite, List<String> images});
}

/// @nodoc
class __$FavoriteCopyWithImpl<$Res> extends _$FavoriteCopyWithImpl<$Res>
    implements _$FavoriteCopyWith<$Res> {
  __$FavoriteCopyWithImpl(_Favorite _value, $Res Function(_Favorite) _then)
      : super(_value, (v) => _then(v as _Favorite));

  @override
  _Favorite get _value => super._value as _Favorite;

  @override
  $Res call({
    Object? id = freezed,
    Object? isFavorite = freezed,
    Object? images = freezed,
  }) {
    return _then(_Favorite(
      id: id == freezed ? _value.id : id as int,
      isFavorite:
          isFavorite == freezed ? _value.isFavorite : isFavorite as bool,
      images: images == freezed ? _value.images : images as List<String>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Favorite with DiagnosticableTreeMixin implements _Favorite {
  const _$_Favorite(
      {required this.id, required this.isFavorite, required this.images});

  factory _$_Favorite.fromJson(Map<String, dynamic> json) =>
      _$_$_FavoriteFromJson(json);

  @override
  final int id;
  @override
  final bool isFavorite;
  @override
  final List<String> images;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Favorite(id: $id, isFavorite: $isFavorite, images: $images)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Favorite'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('isFavorite', isFavorite))
      ..add(DiagnosticsProperty('images', images));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Favorite &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.isFavorite, isFavorite) ||
                const DeepCollectionEquality()
                    .equals(other.isFavorite, isFavorite)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(isFavorite) ^
      const DeepCollectionEquality().hash(images);

  @JsonKey(ignore: true)
  @override
  _$FavoriteCopyWith<_Favorite> get copyWith =>
      __$FavoriteCopyWithImpl<_Favorite>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FavoriteToJson(this);
  }
}

abstract class _Favorite implements Favorite {
  const factory _Favorite(
      {required int id,
      required bool isFavorite,
      required List<String> images}) = _$_Favorite;

  factory _Favorite.fromJson(Map<String, dynamic> json) = _$_Favorite.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  bool get isFavorite => throw _privateConstructorUsedError;
  @override
  List<String> get images => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FavoriteCopyWith<_Favorite> get copyWith =>
      throw _privateConstructorUsedError;
}
