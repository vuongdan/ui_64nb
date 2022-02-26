import 'package:flutter/material.dart';
import 'package:ui_64nb/constants.dart';
import 'package:ui_64nb/main.dart';

class RatingView extends StatefulWidget {
  final double score;
  // in other case
  const RatingView({
    Key? key,
    required this.score,
  }) : super(key: key);

  @override
  State<RatingView> createState() => _RatingViewState();
}

class _RatingViewState extends State<RatingView> {
  late int score;
  @override
  void initState() {
    super.initState();
    score = widget.score.toInt();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConstants.ratingSize.height,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (context, index) {
            if (index == 5) {
              return Center(
                  child: Padding(
                padding: const EdgeInsets.only(left: 6, top: 3),
                child: Text(
                  '$score.0',
                  style: const TextStyle(fontSize: 14.0),
                ),
              ));
            } else {
              if (index <= score - 1) {
                return GestureDetector(
                    onTap: () {
                      setState(() {
                        score = index + 1;
                      });
                    },
                    child: const YellowRatingStar());
              } else {
                return GestureDetector(
                    onTap: () {
                      setState(() {
                        score = index + 1;
                      });
                    },
                    child: const GreyRatingStar());
              }
            }
          }),
    );
  }
}

class YellowRatingStar extends StatelessWidget {
  const YellowRatingStar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(1.0),
        width: SizeConstants.starSize.width,
        height: SizeConstants.starSize.height,
        child: Center(
            child: Image.asset('assets/images/yellow_star/yellow_star3x.png')));
  }
}

class GreyRatingStar extends StatelessWidget {
  const GreyRatingStar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(1.0),
        width: SizeConstants.starSize.width,
        height: SizeConstants.starSize.height,
        child: Center(
            child: Image.asset('assets/images/grey_star/grey_star3x.png')));
  }
}
