import 'package:flutter/material.dart';
import 'package:moviesns/model/model_movie.dart';
import 'package:moviesns/widget/my_profile.dart';

class FeedShow extends StatelessWidget {
  const FeedShow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('리뷰')),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                MyProfile(),
                SizedBox(width: 10),
                Text(
                  '홍길동',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
            SizedBox(height: 20),
            const Text('재밋었다완전룰루랄라'),
            Row(
              children: [
                Expanded(child: SizedBox()),
                SizedBox(width: 10, height: 20),
                Text(
                  '2023-01-24',
                  style: TextStyle(fontSize: 15, color: Colors.white38),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(child: SizedBox()),
                SizedBox(height: 20),
                SizedBox(width: 10),
                OutlinedButton(
                  onPressed: () {},
                  child: Text('수정'),
                  style: ButtonStyle(),
                ),
                OutlinedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('피드 삭제'),
                          content: Text('정말 삭제하시겠습니까'),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'Cancel'),
                              child: const Text('cancel'),
                            ),
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'Ok'),
                              child: const Text('Ok'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Text('삭제'),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
