import 'package:freezed_annotation/freezed_annotation.dart';
import 'tv_list_item_tmdb.dart';

part 'tv_list_response_tmdb.freezed.dart';
part 'tv_list_response_tmdb.g.dart';

@freezed
class TVListResponseTMDB with _$TVListResponseTMDB {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory TVListResponseTMDB({
    required int page,
    required List<TVListItemTMDB> results,
    required int totalPages,
    required int totalResults,
  }) = _TVListResponseTMDB;

  factory TVListResponseTMDB.fromJson(Map<String, dynamic> json) => _$TVListResponseTMDBFromJson(json);
}
