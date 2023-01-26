import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moviesns/model/model_movie.dart';
import 'package:moviesns/repository/movie_repository.dart';

class MovieController extends GetxController {
  final movieRepo = Get.put(MovieRepository());
  List movieList = [];
  late Movie movie;

  //영화 가져오기
  Future<List> movieIndex() async {
    List? body = await movieRepo.movieIndex();
    if (body == null) {
      return [];
    }
    List movie = body.map(((e) => Movie.fromMap(e))).toList();
    movieList = movie;
    update();
    return movieList;
  }
}
