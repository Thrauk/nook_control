import 'package:flutter/material.dart';
import 'package:nook_control_client/nook_control_client.dart';
import 'package:nook_control_flutter/src/core/styles/colors.dart';
import 'package:nook_control_flutter/src/core/styles/text_styles.dart';

class SearchMediaItem extends StatelessWidget {
  const SearchMediaItem({
    super.key,
    required this.item,
    this.onTap,
  });

  final SearchMediaItemInfo item;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 200,
        width: double.infinity,
        color: ATColors.dark,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              _MediaItemImage(
                imagePath: item.posterUrl,
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${item.title} (${item.airDate.split('-')[0]})',
                        style: ATTextStyles.h3(
                          color: ATColors.orange,
                        ),
                      ),
                      Text(
                        item.description,
                        overflow: TextOverflow.ellipsis,
                        style: ATTextStyles.custom(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                        maxLines: 5,
                      ),
                      Spacer(),
                      Text(
                        'Adventure, Science Fiction, Drama',
                        style: ATTextStyles.custom(
                          fontSize: 12,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // show.poster_path != null ? Image.network('https://image.tmdb.org/t/p/original/${show.poster_path}') : Container(),
            ],
          ),
        ),
      ),
    );
  }
}

class SearchMediaItemInfo {
  const SearchMediaItemInfo({
    required this.posterUrl,
    required this.title,
    required this.airDate,
    required this.description,
  });
  final String? posterUrl;
  final String title;
  final String airDate;
  final String description;
}

class _MediaItemImage extends StatelessWidget {
  const _MediaItemImage({
    required this.imagePath,
  });
  final String? imagePath;

  static const baseUrl = 'https://image.tmdb.org/t/p/original/';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 115,
      decoration: BoxDecoration(
        color: Colors.black,
        image: imagePath != null
            ? DecorationImage(
                fit: BoxFit.contain,
                image: NetworkImage(baseUrl + imagePath!),
              )
            : null,
      ),
      child: imagePath == null
          ? const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.warning),
                Text(
                  'No Preview Available',
                  textAlign: TextAlign.center,
                ),
              ],
            )
          : null,
    );
  }
}
