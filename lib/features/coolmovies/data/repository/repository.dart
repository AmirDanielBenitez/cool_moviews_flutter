import 'package:coolmovies/features/coolmovies/data/data_sources/remote/movies_api_provider.dart';
import 'package:coolmovies/features/coolmovies/data/data_sources/remote/reviews_api_provider.dart';
import 'package:coolmovies/features/coolmovies/data/data_sources/remote/user_api_provider.dart';
import 'package:coolmovies/features/coolmovies/data/models/movie/movie_model.dart';
import 'package:coolmovies/features/coolmovies/data/models/review/review_model.dart';
import 'package:coolmovies/features/coolmovies/data/models/user/user_model.dart';

class Repository {
  final MoviesApiProvider moviesApiProvider;
  final ReviewsApiProvider reviewsApiProvider;
  final UserApiProvider userApiProvider;
  Repository(
      this.moviesApiProvider, this.reviewsApiProvider, this.userApiProvider);

  // Movies
  Future<List<Movie>> fetchAllMovies() => moviesApiProvider.fetchAllMovies();
  // Reviews
  Future<List<Review>> fetchAllMovieReviewsByMovie({movieId}) =>
      reviewsApiProvider.fetchAllMovieReviewsByMovie(movieId);
  Future<List<Review>> fetchAllReviewsByUser({userId}) =>
      reviewsApiProvider.fetchAllReviewsByUser(userId);
  Future<void> sendMovieReview({review}) =>
      reviewsApiProvider.sendMovieReview(review);
  // Users
  Future<User> fetchCurrentUser() => userApiProvider.fetchCurrentUser();
  Future<User> signUpUser({signupData}) =>
      userApiProvider.signUpUser(signupData);
}
