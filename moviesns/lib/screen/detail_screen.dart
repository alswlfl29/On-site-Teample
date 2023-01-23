import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:moviesns/model/model_movie.dart';
import 'package:moviesns/widget/review_item.dart';

class DetailScreen extends StatefulWidget {
  final Movie movie;
  DetailScreen({required this.movie});
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool like = false;
  @override
  void initState() {
    super.initState();
    like = widget.movie.like;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: ListView(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/${widget.movie.poster}'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Container(
                          alignment: Alignment.center,
                          color: Colors.black.withOpacity(0.1),
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.fromLTRB(0, 45, 0, 10),
                                  child: Image.asset(
                                      'images/${widget.movie.poster}'),
                                  height: 300,
                                ),
                                Container(
                                  padding: EdgeInsets.all(7),
                                  child: Text(
                                    widget.movie.summary,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(7),
                                  child: Text(
                                    widget.movie.title,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              makeMenuButton(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget makeMenuButton() {
  return Container();
}
