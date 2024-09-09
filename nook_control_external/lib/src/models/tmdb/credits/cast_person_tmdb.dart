import 'package:freezed_annotation/freezed_annotation.dart';

part 'cast_person_tmdb.freezed.dart';
part 'cast_person_tmdb.g.dart';

@freezed
class CastPersonTMDB with _$CastPersonTMDB {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory CastPersonTMDB({
    required bool adult,
    required int gender,
    required int id,
    required String name,
    String? profilePath,
    required String character,
    required int order,
  }) = _CastPersonTMDB;

  factory CastPersonTMDB.fromJson(Map<String, dynamic> json) =>
      _$CastPersonTMDBFromJson(json);
}