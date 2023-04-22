import 'package:netflix/infrastructure/API/Api_key.dart';

import '../../core/Colors/Strings.dart';

class APIEndPoints {
  static const downloads = "${BaseURL}/trending/all/day?api_key=${APIKey}";
  static const Search = "${BaseURL}/search/movie?api_key=${APIKey}";
  static const Comingsoon = "${BaseURL}/movie/upcoming?api_key=${APIKey}";
  static const Everyoneswatching =
      "${BaseURL}/movie/now_playing?api_key=${APIKey}";
  static const TopratedShows = "${BaseURL}/tv/top_rated?api_key=${APIKey}";

  static const IndianShows =
      "https://api.themoviedb.org/3/discover/movie?api_key=$APIKey&language=hi-IN&region=IN&sort_by=popularity.desc&page=1&primary_release_year=2018&with_original_language=hi";

  GetActors(int id) {
    return "https://api.themoviedb.org/3/tv/$id/credits?api_key=$APIKey&language=en-US";
  }

  GetReviews(int id) {
    return "https://api.themoviedb.org/3/tv/$id/reviews?api_key=$APIKey";
  }

  GetMovieActors(int id) {
    return "https://api.themoviedb.org/3/movie/$id/credits?api_key=${APIKey}&language=en-US";
  }
}
