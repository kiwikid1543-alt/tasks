# tasks 앱 구현

1. 프로젝트명: tasks 
2. `lib`에 
            pages
                home
                    widgets
                    home_page.dart 생성
                detail
                    widgets
                    todo_detail_page.dart 생성

3. To Do Entity Class 생성        
    final String title;
    final String? description;
    final bool isFavorite;
    final bool isDone;
        
3. 기본화면 레이아웃 나누기
    <home_page>
    #### appBar
    - title
        - Text


    #### body
    - Column    
        - ContainerBox
            - Column
                - Image
                - Text
                - Text
        - Icon


    #### bottom

4. 기본화면 home_page 만들기

- title에 ‘수강생 이름`s Tasks’ 넣기
- AppBar title에 사이즈 20, 볼드체 적용 하기
- margin & padding 20 적용하기
- 백그라운드 컬러 및 테두리 라운딩에 circular(12) 적용하기
- Column을 이용하여 수직으로 순서대로 배치(각 요소간 간격 12 설정)
   - 원하는 이미지 (가로&세로 100씩, webp로 변환해서 넣기(Android Studio 사용!) 
   - 텍스트1(사이즈16, 볼드체 적용)
   - 텍스트2(사이즈14, 높이 1.5, 가운데 정렬 적용, AppBar에 적용한 title을 받아 사용)
- Icon 사용하기 (Icon Class의 add icon 사용)
- 아이콘은 흰색, 사이즈 24, 배경은 원하는 색상, 버튼 모양은 원형 적용
- 눌렀을 때 작동 될 addTodo 함수 작성 및 위젯에 연결


