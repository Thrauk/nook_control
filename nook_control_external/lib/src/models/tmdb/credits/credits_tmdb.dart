import 'package:freezed_annotation/freezed_annotation.dart';
import 'cast_person_tmdb.dart'; // Ensure the path is correct
import 'crew_person_tmdb.dart'; // Ensure the path is correct

part 'credits_tmdb.freezed.dart';
part 'credits_tmdb.g.dart';

@freezed
class CreditsTMDB with _$CreditsTMDB {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory CreditsTMDB({
    required List<CastPersonTMDB> cast,
    required List<CrewPersonTMDB> crew,
  }) = _CreditsTMDB;

  factory CreditsTMDB.fromJson(Map<String, dynamic> json) =>
      _$CreditsTMDBFromJson(json);
}