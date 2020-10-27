import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ii_movies/src/widgets/card_swiper_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text('Peliculas en cines'),
          backgroundColor: Colors.indigoAccent,
          actions: [IconButton(icon: Icon(Icons.search), onPressed: () {})],
        ),
        body: Container(
          child: Column(
            children: [this._cardSwiper()],
          ),
        ));
  }

  Widget _cardSwiper() {
    return CardSwiperWidget(movies: [1, 2, 3, 4, 5]);
  }
}
