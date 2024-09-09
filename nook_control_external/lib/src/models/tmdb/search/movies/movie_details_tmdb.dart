import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nook_control_external/src/models/tmdb/credits/credits_tmdb.dart';
import 'package:nook_control_external/src/models/tmdb/external/external_ids.dart';

part 'movie_details_tmdb.freezed.dart';
part 'movie_details_tmdb.g.dart';

@freezed
class MovieDetailsTMDB with _$MovieDetailsTMDB {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory MovieDetailsTMDB({
    bool? adult,
    String? backdropPath,
    // genreIds field will be added in the future
    required int id,
    String? imdbId,
    String? originalLanguage,
    required String originalTitle,
    required String overview,
    required double popularity,
    String? posterPath,
    required String releaseDate,
    required String title,
    required double voteAverage,
    required int voteCount,
    required CreditsTMDB credits,
    required ExternalIds externalIds,
  }) = _MovieDetailsTMDB;

  factory MovieDetailsTMDB.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailsTMDBFromJson(json);
}