import 'package:freezed_annotation/freezed_annotation.dart';

part 'tv_list_item_tmdb.freezed.dart';
part 'tv_list_item_tmdb.g.dart';

@freezed
class TVListItemTMDB with _$TVListItemTMDB {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory TVListItemTMDB({
    required bool adult,
    String? backdropPath,
    required List<int> genreIds,
    required int id,
    required List<String> originCountry,
    String? originalLanguage,
    required String originalName,
    required String overview,
    required double popularity,
    String? posterPath,
    required String firstAirDate,
    required String name,
    required double voteAverage,
    required int voteCount,
  }) = _TVListItemTMDB;

  factory TVListItemTMDB.fromJson(Map<String, dynamic> json) => _$TVListItemTMDBFromJson(json);
}
