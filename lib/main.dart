import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:ui_64nb/constants.dart';
import 'package:ui_64nb/rating_box.dart';
import 'package:ui_64nb/select_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<ItemModel> items = List<ItemModel>.generate(
      10,
      (index) => ItemModel(
          name: "Ngô Minh Đạt",
          locale: "Hồ Chí Minh",
          detail: "Chuyên viên tư vấn du học",
          score: 5,
          price: 1000000,
          timeDuration: 4,
          description:
              "Tôi đã từng du học 4 năm tại Hàn Quốc và đang có kinh nghiệm làm việc cho công ty tư vấn du học, tôi có thể giúp bạn giải đáp toàn bộ thắc mắc về vấn đề du học đây là một đoạn văn rất là dài, đây là một đoạn văn rất là dài, đây là một đoạn văn rất là dài, đây là một đoạn văn rất là dài, đây là một đoạn văn rất là dài, đây là một đoạn văn rất là dài, đây là một đoạn văn rất là dài, đây là một đoạn văn rất là dài, đây là một đoạn văn rất là dài, đây là một đoạn văn rất là dài, đây là một đoạn văn rất là dài, đây là một đoạn văn rất là dài, rất là dài."));
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: ((context, index) {
            return const Example();
          })),
    ));
  }
}

class Example extends StatelessWidget {
  const Example({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            padding: const EdgeInsets.only(
                top: 21.0, bottom: 21.0, left: 15.0, right: 15),
            width: SizeConstants.size.width,
            // height: size.height,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 2,
                    offset: const Offset(1, 1), // changes position of shadow
                  ),
                ],
                color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 46,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const AvatarCircle(),
                      const SizedBox(
                        width: 8,
                      ),
                      const NameBox(),
                      const Spacer(),
                      Column(
                        children: const [
                          SizedBox(
                            height: 2,
                          ),
                          SelectButton()
                        ],
                      )
                    ],
                  ),
                ),
                const LocationBox(),
                const Divider(
                  height: SizeConstants.dividerHeight,
                  thickness: 1.0,
                  color: Color(0xffC5D0CF),
                  //cái này lấy trên figma :v
                ),
                const InformationBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AvatarCircle extends StatelessWidget {
  const AvatarCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      width: 44,
      child: Center(
        child: CircleAvatar(
          backgroundColor: Colors.white,
          // cái vòng rad 1px này chắc dùng để hiển thị trạng thái onl/off,
          // tạm thời để màu trắng
          radius: SizeConstants.avatarRad,
          child: CircleAvatar(
              radius: SizeConstants.avatarRad - 1,
              child: Image.asset('assets/images/avatar/avatar1x.png')),
        ),
      ),
    );
  }
}

class NameBox extends StatelessWidget {
  const NameBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        SizedBox(
          height: 24,
          child: Text(
            'Ngô Minh Đạt',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(
          height: 22,
          width: 120,
          child: RatingView(
            score: 3.1,
          ),
        )
      ],
    );
  }
}

class LocationBox extends StatelessWidget {
  const LocationBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 53,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: 1.28,
          ),
          SizedBox(
            width: SizeConstants.vectorIconSize.width,
            height: SizeConstants.vectorIconSize.height,
            child: Image.asset('assets/images/vector/vector1x.png'),
          ),
          const SizedBox(
            width: 5.28,
          ),
          const Text(
            'Hồ Chí Minh',
            style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w300),
          ),
          const Spacer(),
          SizedBox(
            width: SizeConstants.ellipseIconSize.width,
            height: SizeConstants.ellipseIconSize.height,
            child: Image.asset('assets/images/ellipse/ellipse1x.png'),
          ),
          const SizedBox(width: 7),
          const Text('Chuyên viên tư vấn du học',
              style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w300))
        ],
      ),
    );
  }
}

class InformationBox extends StatelessWidget {
  const InformationBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(top: 16),
          height: 40,
          child: const Text(
            'Nội dung chào giá',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(
          height: 42,
          child: Row(
            children: const [
              Text('Báo giá: 1.000.000đ',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
              Spacer(),
              Text('Thời lượng: 4 giờ',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
            ],
          ),
        ),
        const ReadMoreText(
          'Tôi đã từng du học 4 năm tại Hàn Quốc và đang có kinh nghiệm làm việc cho công ty tư vấn du học, tôi có thể giúp bạn giải đáp toàn bộ thắc mắc về vấn đề du học đây là một đoạn văn rất là dài, đây là một đoạn văn rất là dài, đây là một đoạn văn rất là dài, đây là một đoạn văn rất là dài, đây là một đoạn văn rất là dài, đây là một đoạn văn rất là dài, đây là một đoạn văn rất là dài, đây là một đoạn văn rất là dài, đây là một đoạn văn rất là dài, đây là một đoạn văn rất là dài, đây là một đoạn văn rất là dài, đây là một đoạn văn rất là dài, rất là dài.',
          trimLines: 4,
          textAlign: TextAlign.justify,
          colorClickableText: Color(0xff1C4843),
          trimMode: TrimMode.Line,
          trimCollapsedText: 'Xem thêm ▿',
          trimExpandedText: 'Ẩn bớt ⌃',
          style: TextStyle(
              fontSize: 15,
              height: 1.5,
              letterSpacing: 0.33,
              color: Colors.black),
        ),
      ],
    );
  }
}
