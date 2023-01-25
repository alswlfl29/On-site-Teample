import 'package:flutter/material.dart';
import 'package:moviesns/model/model_movie.dart';
import 'package:moviesns/widget/box_slider.dart';
import 'package:moviesns/widget/carousel_slider.dart';
import 'package:moviesns/widget/circle_slider.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Movie> movies = [
    Movie.fromMap({
      'title': '라라랜드',
      'keyword': '뮤지컬/로맨스',
      'poster': 'lalaland.png',
      'summary': '로스엔젤레스를 배경으로 재즈 뮤지션을 꿈꾸는 세바스찬과 배우를 꿈꾸는 미아가 만나면서 사랑에 빠지는 이야기',
      'like': false
    }),
    Movie.fromMap({
      'title': 'her',
      'keyword': '로맨스/SF',
      'poster': 'her.png',
      'summary': '과학기술의 발달과 함께 개인화된 미래의 로스앤젤레스에서 인격형 인공지능체계와 사랑에 빠진 남자의 이야기',
      'like': false
    }),
    Movie.fromMap({
      'title': '너의 췌장을 먹고싶어',
      'keyword': '로맨스/드라마',
      'poster': 'movie3.png',
      'summary': '시한부 선고를 받은 소녀와 함께한 어느 소년의 이야기',
      'like': false
    }),
    Movie.fromMap({
      'title': '어바웃타임',
      'keyword': '멜로/로맨스',
      'poster': 'movie4.png',
      'summary':
          '모태솔로 팀(돔놀 글리슨)은 성인이 된 날, 아버지(빌 나이)로부터 놀랄만한 가문의 비밀을 듣게 된다. 바로 시간을 되돌릴 수 있는 능력이 있다는 것!',
      'like': false
    }),
    Movie.fromMap({
      'title': '아바타',
      'keyword': '액션',
      'poster': 'movie5.png',
      'summary':
          '판도라 행성에서 제이크 설리와 네이티리가 이룬 가족이 겪게 되는 무자비한 위협과 살아남기 위해 떠나야 하는 긴 여정과 전투, 그리고 견뎌내야 할 상처에 대한 이야기',
      'like': false
    }),
    Movie.fromMap({
      'title': '극한직업',
      'keyword': '코미디',
      'poster': 'movie6.png',
      'summary':
          '불철주야 달리고 구르지만 실적은 바닥, 급기야 해체 위기를 맞는 마약반! 더 이상 물러설 곳이 없는 팀의 맏형 고반장은 국제 범죄조직의 국내 마약 밀반입 정황을 포착하고 장형사, 마형사, 영호, 재훈까지 4명의 팀원들과 함께 잠복 수사에 나선다.',
      'like': false
    }),
    Movie.fromMap({
      'title': '노트북',
      'keyword': '멜로/로맨스',
      'poster': 'movie7.png',
      'summary':
          '17살, ‘노아’는 밝고 순수한 ‘앨리’를 보고 첫눈에 반한다. 빠른 속도로 서로에게 빠져드는 둘. 그러나 이들 앞에 놓인 장벽에 막혀 이별하게 된다.',
      'like': false
    })
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[
            CarouselImage(movies: movies),
            TopBar(),
          ],
        ),
        CircleSlider(
          movies: movies,
        ),
        BoxSlider(
          movies: movies,
        ),
      ],
    );
  }
}

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset(
            'images/logo4.png',
            fit: BoxFit.contain,
            height: 30,
          ),
        ],
      ),
    );
  }
}
