import 'package:coolmovies/features/coolmovies/data/models/movie/movie_model.dart';
import 'package:coolmovies/features/coolmovies/presentation/pages/home/home_page.dart';
import 'package:coolmovies/features/coolmovies/presentation/pages/movie_detail/movie_detail.dart';
import 'package:coolmovies/features/coolmovies/presentation/pages/movie_image/movie_image.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Route onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _materialRoute(const HomePage());
      case '/movie-detail':
        return _materialRoute(
          MovieDetail(
            movie: settings.arguments as Movie,
          ),
        );
      case '/movie-image':
        final arguments = settings.arguments as Map<String, dynamic>;
        return _materialRoute(
          MovieImage(
            tag: arguments['tag'],
            imagePath: arguments['imagePath'],
          ),
        );

      default:
        return _materialRoute(const HomePage());
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}
