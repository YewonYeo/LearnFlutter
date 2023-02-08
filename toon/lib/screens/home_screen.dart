import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final bool isMain = false;
  bool hasRight = true;
  String? nickname = "똑답";
  String title = "오늘의 웹툰";
  Function? clickRight;

  HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: hasRight
            ? (isMain
                ? [
                    // 헤더 메인페이지 우측 아이콘
                    IconButton(
                      onPressed: () {
                        print("메인 페이지 알람 버튼");
                      },
                      icon: const Icon(
                        Icons.notifications,
                      ),
                    )
                  ]
                : [
                    // 헤더 우측 아이콘
                    IconButton(
                      onPressed: () {
                        print("헤더 우측 아이콘 클릭");
                      },
                      icon: const Icon(
                        size: 18,
                        Icons.menu_rounded,
                      ),
                    )
                  ])
            : [],
        leading: isMain
            ? null
            :
            // 뒤로가기 버튼
            IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  size: 18,
                  Icons.arrow_back_ios_new_rounded,
                )),
        centerTitle: isMain ? false : true,
        elevation: 0.3,
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xFF6892D5),
        title: Text(
          isMain ? "$nickname의 폴더" : title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
