import 'package:flutter/material.dart';
import 'package:nook_control_client/nook_control_client.dart';
import 'package:nook_control_flutter/main.dart';
import 'package:nook_control_flutter/src/features/tv_shows/presentation/screens/search_tv_shows_screen.dart';
import 'package:nook_control_flutter/src/features/tv_shows/presentation/widgets/search_media_item.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class SearchTvShowsLayout extends StatefulWidget {
  const SearchTvShowsLayout({
    super.key,
    this.queryParameters = const {},
  });

  final Map<String, dynamic> queryParameters;

  @override
  State<SearchTvShowsLayout> createState() => _SearchTvShowsLayoutState();
}

class _SearchTvShowsLayoutState extends State<SearchTvShowsLayout> {
  final TextEditingController _searchQueryController = TextEditingController();
  TVListResponseTMDB? response;
  String? _query;

  @override
  void initState() {
    super.initState();
    print(widget.queryParameters);
    _query = widget.queryParameters['query'] as String?;
    if (_query != null) {
      _searchQueryController.text = _query!;
      () async {
        await _getShows(_query);
        setState(() {});
      }.call();
    }
  }

  @override
  void didUpdateWidget(covariant SearchTvShowsLayout oldWidget) {
    super.didUpdateWidget(oldWidget);
    print(widget.queryParameters);

    if (oldWidget.queryParameters != widget.queryParameters) {
      _query = widget.queryParameters['query'] as String?;
      if (_query != null) {
        _searchQueryController.text = _query!;
        () async {
          await _getShows(_query);
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
                onSubmitted: _onSearchShows,
                suffix: IconButton(
                  onPressed: () {
                    _onSearchShows.call(_searchQueryController.text);
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
              return SearchMediaItem(
                item: response!.results[index],
              );
            },
          ),
        )
        // Wrap(
        //   children: response?.results
        //           .map(
        //             (show) => Padding(
        //               padding: const EdgeInsets.all(8.0),
        //               child: Column(
        //                 children: [
        //                   Container(
        //                     height: 300,
        //                     width: 200,
        //                     color: Colors.red,
        //                     child: show.poster_path != null
        //                         ? Image.network('https://image.tmdb.org/t/p/original/${show.poster_path}')
        //                         : Container(),
        //                   ),
        //                   Text('${show.name} (${show.first_air_date.split('-')[0]})'),
        //                 ],
        //               ),
        //             ),
        //           )
        //           .toList() ??
        //       [],
        // ),
      ],
    );
  }

  void _onSearchShows(value) async {
    SearchTvShowsScreen.go(
      context,
      queryParameters: {
        'query': value,
      },
    );
  }

  Future<void> _getShows(value) async {
    response = await serverpodClient.tvShows.searchShows(
      SearchQuery(
        query: value,
        page: 1,
      ),
    );
  }
}
