import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moviesns/controller/movie_controller.dart';
import 'package:moviesns/screen/home_screen.dart';
import 'package:moviesns/widget/bottom_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final movieController = Get.put(MovieController());
  late TabController controller;

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  void _fetchData() async {
    bool result = (await movieController.movieIndex()) as bool;
    // if (!result) {
    //   Get.off(() => HomeScreen());
    // }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MoiveReview',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Color.fromARGB(255, 0, 0, 0),
        accentColor: Colors.white,
      ),
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              HomeScreen(context),
              // Container(
              //   child: Center(
              //     child: Text('검색'),
              //   ),
              // ),
              // Container(
              //   child: Center(
              //     child: Text('저장한콘텐츠'),
              //   ),
              // ),
              // Container(
              //   child: Center(
              //     child: Text('더보기'),
              //   ),
              // ),
            ],
          ),
          bottomNavigationBar: Bottom(),
        ),
      ),
    );
  }
}
