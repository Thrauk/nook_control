import 'package:freezed_annotation/freezed_annotation.dart';

part 'crew_person_tmdb.freezed.dart';
part 'crew_person_tmdb.g.dart';

@freezed
class CrewPersonTMDB with _$CrewPersonTMDB {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory CrewPersonTMDB({
    required bool adult,
    required int gender,
    required int id,
    required String name,
    String? profilePath,
    required String job,
  }) = _CrewPersonTMDB;

  factory CrewPersonTMDB.fromJson(Map<String, dynamic> json) =>
      _$CrewPersonTMDBFromJson(json);
}