class ApiConstants {
  ApiConstants._();

  static const String BASE_URL = "https://api.themoviedb.org/3/";
  static const String BASE_IMAGE_URL = "https://image.tmdb.org/t/p/w500";

  static String getTendingMovies = 'trending/movie/day';
  static String getPopularMovies = 'movie/popular';
  static String getPlayingNow = 'movie/now_playing';
  static String getComingSoon = 'movie/upcoming';

  static String getMovieDetail(int id) => 'movie/$id';
  static String getCastCrew(int id) => 'movie/$id/credits';
  static String getVideos(int id) => 'movie/$id/videos';
  static String searchMovie = 'search/movie';
}
