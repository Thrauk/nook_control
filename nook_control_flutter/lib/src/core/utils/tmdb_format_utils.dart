class TMDBFormatUtils {
  static const String _baseImageUrl = 'https://image.tmdb.org/t/p/original/';

  static String? fullImagePath(String? path) => path == null ? null : '$_baseImageUrl$path';
}
