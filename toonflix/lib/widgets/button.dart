import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Color bgColor;
  final Color textColor;

  // 버튼 색, 폰트 색 바꾸는 경우
  const Button({
    super.key,
    required this.text,
    required this.bgColor,
    required this.textColor,
  });

  // 기본 색으로 만드는 경우
  const Button.basic({
    super.key,
    required String text,
  })  : text = text,
        bgColor = const Color(0xFF6892D5),
        textColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(45),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 50,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
