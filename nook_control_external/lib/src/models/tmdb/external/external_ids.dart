import 'package:freezed_annotation/freezed_annotation.dart';

part 'external_ids.freezed.dart';
part 'external_ids.g.dart';

@freezed
class ExternalIds with _$ExternalIds {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ExternalIds({
    required String imdbId,
  }) = _ExternalIds;

  factory ExternalIds.fromJson(Map<String, dynamic> json) =>
      _$ExternalIdsFromJson(json);
}