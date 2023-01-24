import 'package:flutter/material.dart';
import 'package:moviesns/screen/feed_show.dart';
import 'package:moviesns/widget/my_profile.dart';

class ReviewItem extends StatelessWidget {
  const ReviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const FeedShow()),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyProfile(),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Text(
                        '유저1',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        '2023-01-23',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      )
                    ],
                  ),
                  SizedBox(height: 5),
                  const Text('재밌었다.')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
