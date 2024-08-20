import 'package:nook_control_server/src/generated/protocol.dart';
import 'package:nook_control_server/src/services/tmdb/tmdb_repository.dart';
import 'package:serverpod/serverpod.dart';

class TvShowsEndpoint extends Endpoint {
  @override
  bool get requireLogin => true;

  Future<TVListResponseTMDB> searchShows(Session session, SearchQuerySingleTMDB query) async {
    return await TMDBRepository().searchTVShows(query);
  }
}
