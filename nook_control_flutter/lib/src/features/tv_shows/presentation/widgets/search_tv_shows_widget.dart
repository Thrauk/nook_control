import 'package:flutter/material.dart';
import 'package:nook_control_client/nook_control_client.dart';
import 'package:nook_control_flutter/main.dart';

class SearchTvShowsWidget extends StatefulWidget {
  const SearchTvShowsWidget({super.key});

  @override
  State<SearchTvShowsWidget> createState() => _SearchTvShowsWidgetState();
}

class _SearchTvShowsWidgetState extends State<SearchTvShowsWidget> {
  final TextEditingController _searchQueryController = TextEditingController();
  TVListResponseTMDB? response;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            children: [
              SizedBox(
                width: 150,
                child: TextFormField(
                  controller: _searchQueryController,
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  response = await client.tvShows.searchShows(
                    SearchTvShowQuery(
                      query: _searchQueryController.text,
                      page: 1,
                    ),
                  );
                  setState(() {});
                },
                child: Text(
                  'Search',
                ),
              ),
            ],
          ),
          Wrap(
            children: response?.results
                    .map(
                      (show) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: 300,
                              width: 200,
                              color: Colors.red,
                              child: show.poster_path != null
                                  ? Image.network('https://image.tmdb.org/t/p/original/${show.poster_path}')
                                  : Container(),
                            ),
                            Text('${show.name} (${show.first_air_date.split('-')[0]})'),
                          ],
                        ),
                      ),
                    )
                    .toList() ??
                [],
            // children: response == null ? [] : [
            //   Column(
            //     children: [
            //       Image.network('https://image.tmdb.org/t/p/original/${response!.results[0].poster_path}'),
            //     ],
            //   ),
            // ],
          ),
        ],
      ),
    );
  }
}
