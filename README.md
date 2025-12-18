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



