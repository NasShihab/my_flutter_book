class PageList {
  String title;
  String pageName;

  PageList(
    this.title,
    this.pageName,
  );
}

List<PageList> pageData = [
  PageList('GetX Slider', '/getx_slider'),
  PageList('Rest Api Call', '/api_page'),
  PageList('Splash Screen Stateful', '/splash_screen_st'),
  PageList('Tab Bar View', '/tabbarr'),
];
