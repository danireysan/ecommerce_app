import 'package:ecommerce_app/utils/dimensions.dart';
import 'package:flutter/cupertino.dart';

// ignore: must_be_immutable
class BigText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow textOverflow;
  BigText({
    Key? key,
    this.color = const Color(0xFF332d2b),
    this.size = 0,
    required this.text,
    this.textOverflow = TextOverflow.ellipsis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: textOverflow,
      style: TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        fontSize: size==0 ? Dimensions.font20 : size,
        color: color,
        
      ),
    );
  }
}
