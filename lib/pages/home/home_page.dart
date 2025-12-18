import 'package:flutter/material.dart';

/// #### appBar
///     - title
///         - Text
///
///
///     #### body
///     - Column
///         - ContainerBox
///             - Column
///                 - Image
///                 - Text
///                 - Text
///         - Icon
///
///
///     #### bottom

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final String appName = '동준`s Tasks';

  void addTodo() {
    // 플로팅액션버튼에서 실행할 함수 정의 -> 바텀시트로 가도록
    return;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        onPressed: addTodo, //
        backgroundColor: Colors.lightGreen,
        foregroundColor: Colors.white,
        child: Icon(
          Icons.add,
          size: 24,
        ), // 왜 마지막으로 오게해야? -> 차일드의 차일드 계속 이어질 수 있어 혼잡방지
      ),

      backgroundColor: Colors.grey.shade400, // Scaffold에서 배경색 지정
      appBar: AppBar(
        title: Text(
          appName,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(12),
            ),

            child: Column(
              // Container에 child 속성을 사용하여 Column을 사용, 그 다음 children
              children: [
                SizedBox(
                  width: 100,
                  height: 100,
                  child: ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(12),
                    child: Image.asset(
                      'assets/image.png',
                      fit: BoxFit.cover,
                    ), // fit: BoxFit.cover 이미지 꽉차게
                  ), // image를 추가할 때 pubspec.yaml에 경로를 추가해야함
                ),
                SizedBox(height: 12),
                Text(
                  textAlign: TextAlign.center,
                  '아직 할 일이 없음',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 12),
                Text(
                  textAlign: TextAlign.center,
                  '할 일을 추가하고 $appName에서\n 할 일을 추적하세요.',
                  style: TextStyle(fontSize: 14, height: 1.5), // 높이? 미묘한 디자인
                ),
              ],
            ),
          ),
        ],
      ),
      bottomSheet: ,
    );
  }
}
