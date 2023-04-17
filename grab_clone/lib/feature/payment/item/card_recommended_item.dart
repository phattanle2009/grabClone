import 'package:flutter/material.dart';

class CardRecommendedItem extends StatelessWidget {
  String title;
  String imageName;
  List<Color> colors;

  CardRecommendedItem({
    required this.title,
    required this.imageName,
    required this.colors,
  });

  Widget _config(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2 - 16 - 8,
      height: MediaQuery.of(context).size.width / 2 - 16 - 8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(6)),
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
      child: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 8, top: 8, right: 8, bottom: 16),
              child: Text(
                title,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 8),
            child: Image.asset(
              imageName,
              width: 80,
              height: 80,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _config(context);
  }
}
