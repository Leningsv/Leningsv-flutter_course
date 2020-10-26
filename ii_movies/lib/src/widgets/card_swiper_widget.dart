import 'package:flutter/cupertino.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class CardSwiperWidget extends StatelessWidget {
  final List<dynamic> movies;

  CardSwiperWidget({ @required this.movies});

  @override
  Widget build(BuildContext context) {
    final _screenSize =MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(top: 10.0),
      child: Swiper(
        itemHeight: _screenSize.height * 0.5,
        itemBuilder: (BuildContext context, int index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: new Image.network(
              "http://via.placeholder.com/350x150",
              fit: BoxFit.cover,
            ),
          );
        },
        itemCount: this.movies.length,
        layout: SwiperLayout.STACK,
        itemWidth: _screenSize.width * 0.7,
      ),
    );
  }
}
