import 'package:nook_control_server/src/generated/protocol.dart';
import 'package:nook_control_server/src/services/tmdb/tmdb_repository.dart';
import 'package:serverpod/serverpod.dart';

class TvShowsEndpoint extends Endpoint {
  Future<TVListResponseTMDB> searchShows(Session session, SearchQuery query) async {
    return await TMDBRepository().searchTVShows(query);
  }
}
