import 'package:flutter/material.dart';

class GridViewShoesBasketball extends StatefulWidget {
  const GridViewShoesBasketball({Key? key}) : super(key: key);

    @override
  // ignore: library_private_types_in_public_api
  _GridViewShoesBasketballState createState() =>
      _GridViewShoesBasketballState();
}

class _GridViewShoesBasketballState extends State<GridViewShoesBasketball> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return const Card();
        });
  }
}
