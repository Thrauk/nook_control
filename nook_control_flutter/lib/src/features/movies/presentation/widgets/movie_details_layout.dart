import 'package:flutter/material.dart';
import 'package:nook_control_client/nook_control_client.dart';
import 'package:nook_control_flutter/main.dart';
import 'package:nook_control_flutter/src/core/utils/tmdb_format_utils.dart';
import 'package:nook_control_flutter/src/core/widgets/media_person.dart';
import 'package:nook_control_flutter/src/core/widgets/media_poster_tmdb.dart';

class MovieDetailsLayout extends StatefulWidget {
  const MovieDetailsLayout({
    super.key,
    this.queryParameters = const {},
  });

  final Map<String, dynamic> queryParameters;

  @override
  State<MovieDetailsLayout> createState() => _MovieDetailsLayoutState();
}

class _MovieDetailsLayoutState extends State<MovieDetailsLayout> {
  MovieDetailsTMDB? response;
  int? _movieId;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _refreshData();
  }

  @override
  void didUpdateWidget(covariant MovieDetailsLayout oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.queryParameters != widget.queryParameters) {
      _refreshData();
    }
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            children: [
              MediaPosterTMDB(
                imagePath: response?.poster_path,
                height: 450,
                width: 300,
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Text(
                  response!.overview,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 24,
          ),
          SizedBox(
            height: 150,
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => const SizedBox(width: 16),
              itemCount: response?.credits.cast.length ?? 0,
              itemBuilder: (context, index) {
                final item = response!.credits.cast[index];
                return MediaPerson(
                  name: item.name,
                  role: item.character,
                  size: 100,
                  imagePath: TMDBFormatUtils.fullImagePath(item.profile_path),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  void _refreshData() {
    _updateParamsValues();
    () async {
      setState(() {
        isLoading = true;
      });
      await _requestData();
      setState(() {
        isLoading = false;
      });
    }.call();
  }

  void _updateParamsValues() {
    final movieIdString = widget.queryParameters['movie_id'] as String?;
    if (movieIdString == null) {
      throw (Exception('[Exception] /movie/details route needs a movie_id query parameter!'));
    }
    _movieId = int.tryParse(movieIdString);
    if (_movieId == null) {
      throw (Exception('[Exception] /movie/details route needs has an invalid movie_id query parameter!'));
    }
  }

  Future<void> _requestData() async {
    response = await serverpodClient.tmdbMovie.getMovieDetails(_movieId!);
  }
}
