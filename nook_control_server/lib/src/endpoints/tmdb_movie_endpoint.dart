import 'package:nook_control_server/src/generated/protocol.dart';
import 'package:nook_control_server/src/services/tmdb/tmdb_repository.dart';
import 'package:serverpod/serverpod.dart';

class TmdbMovieEndpoint extends Endpoint {
  @override
  bool get requireLogin => true;

  Future<MovieListResponseTMDB> searchMovie(Session session, SearchQuerySingleTMDB query) async {
    return await TMDBRepository().searchMovies(query);
  }

  Future<MovieDetailsTMDB> getMovieDetails(Session session, int movieId) async {
    final movieDetails = await TMDBRepository().getMovieDetails(movieId);
    return movieDetails;
  }
}
