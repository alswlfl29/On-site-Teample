import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  @override
  Widget build(BuildContext cotext) {
    return Container(
      color: Colors.black,
      child: Container(
        height: 60,
        child: TabBar(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white60,
          indicatorColor: Colors.transparent,
          tabs: <Widget>[
            Tab(
              icon: Icon(
                Icons.home,
                size: 17,
              ),
              child: Text(
                '홈',
                style: TextStyle(fontSize: 10),
              ),
            ),
            // Tab(
            //   icon: Icon(
            //     Icons.search,
            //     size: 17,
            //   ),
            //   child: Text(
            //     '검색',
            //     style: TextStyle(fontSize: 10),
            //   ),
            // ),
            // Tab(
            //   icon: Icon(
            //     Icons.account_circle,
            //     size: 17,
            //   ),
            //   child: Text(
            //     '마이페이지',
            //     style: TextStyle(fontSize: 10),
            //   ),
            // ),
            // Tab(
            //   icon: Icon(
            //     Icons.list,
            //     size: 17,
            //   ),
            //   child: Text(
            //     '더보기',
            //     style: TextStyle(fontSize: 10),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
