import 'package:freezed_annotation/freezed_annotation.dart';
import 'movie_list_item_tmdb.dart'; // Ensure this path is correct

part 'movie_list_response_tmdb.freezed.dart';
part 'movie_list_response_tmdb.g.dart';

@freezed
class MovieListResponseTMDB with _$MovieListResponseTMDB {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory MovieListResponseTMDB({
    required int page,
    required List<MovieListItemTMDB> results,
    required int totalPages,
    required int totalResults,
  }) = _MovieListResponseTMDB;

  factory MovieListResponseTMDB.fromJson(Map<String, dynamic> json) => _$MovieListResponseTMDBFromJson(json);
}
