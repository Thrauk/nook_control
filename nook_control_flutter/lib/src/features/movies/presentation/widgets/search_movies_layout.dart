import 'package:flutter/material.dart';
import 'package:nook_control_client/nook_control_client.dart';
import 'package:nook_control_flutter/main.dart';
import 'package:nook_control_flutter/src/features/movies/presentation/screens/movie_details_screen.dart';
import 'package:nook_control_flutter/src/features/movies/presentation/screens/search_movies_screen.dart';
import 'package:nook_control_flutter/src/features/tv_shows/presentation/screens/search_tv_shows_screen.dart';
import 'package:nook_control_flutter/src/core/widgets/search_media_item.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class SearchMoviesLayout extends StatefulWidget {
  const SearchMoviesLayout({
    super.key,
    this.queryParameters = const {},
  });

  final Map<String, dynamic> queryParameters;

  @override
  State<SearchMoviesLayout> createState() => _SearchMoviesLayoutState();
}

class _SearchMoviesLayoutState extends State<SearchMoviesLayout> {
  final TextEditingController _searchQueryController = TextEditingController();
  MovieListResponseTMDB? response;
  String? _query;

  @override
  void initState() {
    super.initState();
    print('Init State');
    print(widget.queryParameters);
    _query = widget.queryParameters['query'] as String?;
    if (_query != null) {
      _searchQueryController.text = _query!;
      () async {
        await _requestData(_query);
        setState(() {});
      }.call();
    }
  }

  @override
  void didUpdateWidget(covariant SearchMoviesLayout oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('Did update widget');
    print(widget.queryParameters);

    if (oldWidget.queryParameters != widget.queryParameters) {
      _query = widget.queryParameters['query'] as String?;
      if (_query != null) {
        _searchQueryController.text = _query!;
        () async {
          await _requestData(_query);
          setState(() {});
        }.call();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Row(
          children: [
            SizedBox(
              width: 300,
              child: ShadInput(
                controller: _searchQueryController,
                placeholder: Text('Search'),
                onSubmitted: _onSearch,
                suffix: IconButton(
                  onPressed: () {
                    _onSearch.call(_searchQueryController.text);
                  },
                  padding: EdgeInsets.zero,
                  icon: const Icon(Icons.search),
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            separatorBuilder: (context, index) => const SizedBox(height: 8),
            itemCount: response?.results.length ?? 0,
            itemBuilder: (context, index) {
              final item = response!.results[index];
              return SearchMediaItem(
                onTap: () {
                  MovieDetailsScreen.push(
                    context,
                    queryParameters: {
                      'movie_id': item.id,
                    },
                  );
                },
                item: SearchMediaItemInfo(
                  posterUrl: item.poster_path,
                  title: item.title,
                  airDate: item.release_date,
                  description: item.overview,
                ),
              );
            },
          ),
        )
      ],
    );
  }

  void _onSearch(value) async {
    SearchMoviesScreen.go(
      context,
      queryParameters: {
        'query': value,
      },
    );
  }

  Future<void> _requestData(value) async {
    response = await serverpodClient.tmdbMovie.searchMovie(
      SearchQuerySingleTMDB(
        query: value,
        page: 1,
      ),
    );
  }
}
