import 'package:flutter/material.dart';
import './home.dart';
import './about.dart';

void main() {
  runApp(PersonalWebsite());
}

class PersonalWebsite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tharusha Jayasooriya',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Main(),
    );
  }
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  PageController pageController = PageController(initialPage: 0);

  int _selectedPage = 0;
  bool isNavIconSelected = false;

  final Color backgrounColor = Color(0xff292929);
  final Color purpleAccent = Color(0xff700B97);
  final Color absoluteZero = Color(0xff0048BA);
  final Color grayAccent = Color(0xff383838);
  final Color grennAccent = Color(0xff59BEA0);

  bool _hoverSocials = false;

  bool _hoverProjects = false;

  bool _hoverInfo = false;

  bool _hoverHome = false;

  int selectedNavIcon = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgrounColor,
        body: Title(
          title: "Tharusha Jayasooriya",
          color: Colors.white,
          child: Stack(children: [
            PageView(
              scrollDirection: Axis.vertical,
              controller: pageController,
              children: [Home(), AboutPage()],
            ),
//            selectedPage(_selectedPage, pageController),
            Container(
              alignment: Alignment.centerLeft,
              child: Container(
                  height: MediaQuery.of(context).size.height / 1.27,
                  width: MediaQuery.of(context).size.width / 14.03,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(18.2),
                          bottomRight: Radius.circular(18.2)),
                      color: Color(0xff121212)),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              selectedNavIcon = 0;
                              _hoverHome = true;
                              _hoverInfo = false;
                              _hoverProjects = false;
                              _hoverSocials = false;
                              pageController.animateToPage(0,
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.bounceIn);
                            });
                          },
                          onHover: (value) {
                            setState(() {
                              if (selectedNavIcon != 0) {
                                _hoverHome = value;
                              }
                            });
                          },
                          child: AnimatedSwitcher(
                              duration: Duration(milliseconds: 300),
                              child: _hoverHome
                                  ? Image(
                                      key: ValueKey<int>(0),
                                      image: AssetImage(
                                          "assets/icons/home_icon_neon.png"))
                                  : Image(
                                      key: ValueKey<int>(1),
                                      image: AssetImage(
                                          "assets/icons/home_icon.png"))),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              selectedNavIcon = 1;

                              _hoverInfo = true;
                              _hoverHome = false;

                              _hoverProjects = false;
                              _hoverSocials = false;

                              pageController.animateToPage(2,
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.bounceIn);
                            });
                          },
                          onHover: (value) {
                            setState(() {
                              if (selectedNavIcon != 1) {
                                _hoverInfo = value;
                              }
                            });
                          },
                          child: AnimatedSwitcher(
                              duration: Duration(milliseconds: 300),
                              child: _hoverInfo
                                  ? Image(
                                      key: ValueKey<int>(0),
                                      image: AssetImage(
                                          "assets/icons/info_icon_neon.png"))
                                  : Image(
                                      key: ValueKey<int>(1),
                                      image: AssetImage(
                                          "assets/icons/info_icon.png"))),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              selectedNavIcon = 3;
                              _hoverProjects = true;
                              _hoverHome = false;
                              _hoverInfo = false;

                              _hoverSocials = false;
                            });
                          },
                          onHover: (value) {
                            setState(() {
                              if (selectedNavIcon != 3) {
                                _hoverProjects = value;
                              }
                            });
                          },
                          child: AnimatedSwitcher(
                              duration: Duration(milliseconds: 300),
                              child: _hoverProjects
                                  ? Image(
                                      key: ValueKey<int>(0),
                                      image: AssetImage(
                                          "assets/icons/projects_icon_neon.png"))
                                  : Image(
                                      key: ValueKey<int>(1),
                                      image: AssetImage(
                                          "assets/icons/projects_icon.png"))),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              selectedNavIcon = 4;
                              _hoverSocials = true;
                              _hoverHome = false;
                              _hoverInfo = false;
                              _hoverProjects = false;
                            });
                          },
                          onHover: (value) {
                            setState(() {
                              if (selectedNavIcon != 4) {
                                _hoverSocials = value;
                              }
                            });
                          },
                          child: AnimatedSwitcher(
                              duration: Duration(milliseconds: 300),
                              child: _hoverSocials
                                  ? Image(
                                      key: ValueKey<int>(0),
                                      image: AssetImage(
                                          "assets/icons/socials_icon_neon.png"))
                                  : Image(
                                      key: ValueKey<int>(1),
                                      image: AssetImage(
                                          "assets/icons/socials_icon.png"))),
                        )
                      ])),
            ),
          ]),
        ));
  }
}

Widget selectedPage(int selectedPage, PageController pageController) {
  final PageController _pageController = PageController(initialPage: 0);

  switch (selectedPage) {
    case 0:
      print("0 Home");

      // _pageController.animateToPage(0,
      //     duration: Duration(
      //       milliseconds: 500,
      //     ),
      //     curve: Curves.ease);
      break;

    case 1:
      print("1 home");
      if (_pageController.hasClients) {
        pageController.animateToPage(1,
            duration: Duration(
              milliseconds: 500,
            ),
            curve: Curves.ease);
      }
      break;

    case 2:
      print("2 about");
      if (_pageController.hasClients) {
        pageController.animateToPage(2,
            duration: Duration(
              milliseconds: 500,
            ),
            curve: Curves.ease);
      }
      break;

    default:
      print("default");
  }

  return PageView(
    scrollDirection: Axis.vertical,
    controller: pageController,
    children: [Home(), AboutPage()],
  );

  // switch (selectedPage) {
  //   case 0:
  //     print("0 Home");
  //     return Home();

  //   case 1:
  //     print("1 home");
  //     return Home();

  //   case 2:
  //     print("2 about");

  //     return AboutPage();

  //   default:
  //     print("default");

  //     return Home();
  // }
}
