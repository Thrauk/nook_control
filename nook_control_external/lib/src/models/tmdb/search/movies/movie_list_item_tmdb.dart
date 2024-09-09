import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_list_item_tmdb.freezed.dart';
part 'movie_list_item_tmdb.g.dart';

@freezed
class MovieListItemTMDB with _$MovieListItemTMDB {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory MovieListItemTMDB({
    required bool adult,
    String? backdropPath,
    required List<int> genreIds,
    required int id,
    String? originalLanguage,
    required String originalTitle,
    required String overview,
    required double popularity,
    String? posterPath,
    required String releaseDate,
    required String title,
    required double voteAverage,
    required int voteCount,
  }) = _MovieListItemTMDB;

  factory MovieListItemTMDB.fromJson(Map<String, dynamic> json) =>
      _$MovieListItemTMDBFromJson(json);
}