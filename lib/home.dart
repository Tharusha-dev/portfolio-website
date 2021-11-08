import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:delayed_display/delayed_display.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedPage = 0;

  final Color backgrounColor = Color(0xff292929);
  final Color purpleAccent = Color(0xff700B97);
  final Color absoluteZero = Color(0xff0048BA);
  final Color grayAccent = Color(0xff383838);
  final Color grennAccent = Color(0xff59BEA0);

  bool _hoverFirebase = false;
  bool _hoverPython = false;
  bool _hoverFlutter = false;
  bool _hoverGit = false;
  bool _hoverJS = false;
  bool _hoverUnity = false;
  bool _hoverReact = false;
  bool _hoverFigma = false;
  bool _hoverApi = false;

  bool _hoverSocials = false;
  bool _hoverProjects = false;
  bool _hoverInfo = false;
  bool _hoverHome = false;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Padding(
        padding: EdgeInsets.only(left: MediaQuery.of(context).size.width / 90),
        child: AnimatedSwitcher(
            duration: Duration(milliseconds: 500),
            child: _hoverFirebase
                ? Container(
                    key: ValueKey<int>(0),
                    width: MediaQuery.of(context).size.width / 2.3,
                    height: MediaQuery.of(context).size.height / 1.08,
                    child: Stack(alignment: Alignment.center, children: [
                      Image(
                          image: AssetImage(
                              "assets/images/firebase_icon_tilted.png")),
                      Positioned(
                        top: -15,
                        child: Text(
                          "I love Firebase",
                          style: GoogleFonts.openSans(
                              textStyle: TextStyle(
                                  fontSize: 72.28,
                                  color: grayAccent,
                                  fontWeight: FontWeight.w800)),
                        ),
                      )
                    ]),
                  )
                : Container(
                    alignment: AlignmentDirectional.bottomStart,
                    key: ValueKey<int>(1),
                    width: MediaQuery.of(context).size.width / 2.3,
                    height: MediaQuery.of(context).size.height / 1.08,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 10 / 100),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi",
                            style: GoogleFonts.openSans(
                                textStyle: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width /
                                            10.26,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800)),
                          ),
                          Text("I'm",
                              style: GoogleFonts.openSans(
                                  textStyle: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width /
                                              23.03,
                                      color: grennAccent,
                                      fontWeight: FontWeight.w800))),
                          Text("Tharusha",
                              style: GoogleFonts.openSans(
                                  textStyle: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width /
                                              18.98,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800))),
                          Text("Jayasooriya",
                              style: GoogleFonts.openSans(
                                  textStyle: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width /
                                              18.98,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800)))
                        ],
                      ),
                    ),
                  )),
      ),
      Container(
        alignment: Alignment.bottomCenter,
        height: MediaQuery.of(context).size.height / 1.25,
        width: 10,
        color: purpleAccent,
      ),
      Padding(
        padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width / 16.84,
        ),
        child: Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.width > 1880 ? 0 : 100),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                DelayedDisplay(
                  delay: Duration(seconds: 1),
                  fadingDuration: Duration(seconds: 2),
                  child: MediaQuery.of(context).size.width > 1880
                      ? Row(
                          children: [
                            InkWell(
                                onTap: () {},
                                onHover: (value) {
                                  setState(() {
                                    _hoverFirebase = value;
                                  });
                                },
                                child: technologyCard(
                                    _hoverFirebase,
                                    'https://media3.giphy.com/media/Ri2TUcKlaOcaDBxFpY/giphy.gif',
                                    purpleAccent,
                                    MediaQuery.of(context).size.height / 4.82)),
                            Padding(
                              padding: const EdgeInsets.only(left: 44),
                              child: InkWell(
                                  onTap: () {},
                                  onHover: (value) {
                                    setState(() {
                                      _hoverPython = value;
                                    });
                                  },
                                  child: technologyCard(
                                      _hoverPython,
                                      'https://media4.giphy.com/media/LMt9638dO8dftAjtco/giphy.gif',
                                      purpleAccent,
                                      MediaQuery.of(context).size.height /
                                          4.82)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 44),
                              child: InkWell(
                                  onTap: () {},
                                  onHover: (value) {
                                    setState(() {
                                      _hoverFlutter = value;
                                    });
                                  },
                                  child: technologyCard(
                                      _hoverFlutter,
                                      'https://media4.giphy.com/media/AQgnKLF0QfLzyDO538/giphy.gif',
                                      purpleAccent,
                                      MediaQuery.of(context).size.height /
                                          4.82)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 44),
                              child: InkWell(
                                  onTap: () {},
                                  onHover: (value) {
                                    setState(() {
                                      _hoverGit = value;
                                    });
                                  },
                                  child: technologyCard(
                                      _hoverGit,
                                      'https://media3.giphy.com/media/KzJkzjggfGN5Py6nkT/giphy.gif',
                                      purpleAccent,
                                      MediaQuery.of(context).size.height /
                                          4.82)),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 44),
                                child: InkWell(
                                    onTap: () {},
                                    onHover: (value) {
                                      setState(() {
                                        _hoverJS = value;
                                      });
                                    },
                                    child: technologyCard(
                                        _hoverJS,
                                        'https://media4.giphy.com/media/ln7z2eWriiQAllfVcn/giphy.gif',
                                        purpleAccent,
                                        MediaQuery.of(context).size.height /
                                            4.82))),
                            Padding(
                                padding: const EdgeInsets.only(left: 44),
                                child: InkWell(
                                    onTap: () {},
                                    onHover: (value) {
                                      setState(() {
                                        _hoverUnity = value;
                                      });
                                    },
                                    child: technologyCard(
                                        _hoverUnity,
                                        'https://media4.giphy.com/media/KHWuOdcXLfiwOLq34Y/giphy.gif?cid=ecf05e47336tfyf0tv6alio2i6oqo7lyjpv9sn0gdeslf3pg&rid=giphy.gif&ct=g',
                                        purpleAccent,
                                        MediaQuery.of(context).size.height /
                                            4.82)))
                          ],
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                InkWell(
                                    onTap: () {},
                                    onHover: (value) {
                                      setState(() {
                                        _hoverFirebase = value;
                                      });
                                    },
                                    child: technologyCard(
                                        _hoverFirebase,
                                        'https://media3.giphy.com/media/Ri2TUcKlaOcaDBxFpY/giphy.gif',
                                        purpleAccent,
                                        MediaQuery.of(context).size.height /
                                            22.5)),
                                Padding(
                                  padding: const EdgeInsets.only(left: 44),
                                  child: InkWell(
                                      onTap: () {},
                                      onHover: (value) {
                                        setState(() {
                                          _hoverPython = value;
                                        });
                                      },
                                      child: technologyCard(
                                          _hoverPython,
                                          'https://media4.giphy.com/media/LMt9638dO8dftAjtco/giphy.gif',
                                          purpleAccent,
                                          MediaQuery.of(context).size.height /
                                              22.5)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 44),
                                  child: InkWell(
                                      onTap: () {},
                                      onHover: (value) {
                                        setState(() {
                                          _hoverFlutter = value;
                                        });
                                      },
                                      child: technologyCard(
                                          _hoverFlutter,
                                          'https://media4.giphy.com/media/AQgnKLF0QfLzyDO538/giphy.gif',
                                          purpleAccent,
                                          MediaQuery.of(context).size.height /
                                              22.5)),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                InkWell(
                                    onTap: () {},
                                    onHover: (value) {
                                      setState(() {
                                        _hoverGit = value;
                                      });
                                    },
                                    child: technologyCard(
                                        _hoverGit,
                                        'https://media3.giphy.com/media/Ri2TUcKlaOcaDBxFpY/giphy.gif',
                                        purpleAccent,
                                        MediaQuery.of(context).size.height /
                                            22.5)),
                                Padding(
                                  padding: const EdgeInsets.only(left: 44),
                                  child: InkWell(
                                      onTap: () {},
                                      onHover: (value) {
                                        setState(() {
                                          _hoverJS = value;
                                        });
                                      },
                                      child: technologyCard(
                                          _hoverJS,
                                          'https://media4.giphy.com/media/LMt9638dO8dftAjtco/giphy.gif',
                                          purpleAccent,
                                          MediaQuery.of(context).size.height /
                                              22.5)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 44),
                                  child: InkWell(
                                      onTap: () {},
                                      onHover: (value) {
                                        setState(() {
                                          _hoverUnity = value;
                                        });
                                      },
                                      child: technologyCard(
                                          _hoverUnity,
                                          'https://media4.giphy.com/media/AQgnKLF0QfLzyDO538/giphy.gif',
                                          purpleAccent,
                                          MediaQuery.of(context).size.height /
                                              22.5)),
                                ),
                              ],
                            ),
                          ],
                        ),
                ),

                // top: MediaQuery.of(context).size.height / 22.5),
                DelayedDisplay(
                  slidingBeginOffset: const Offset(0.0, 1),
                  delay: Duration(seconds: 1),
                  fadingDuration: Duration(seconds: 2),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                          onTap: () {},
                          onHover: (value) {
                            setState(() {
                              _hoverReact = value;
                            });
                          },
                          child: technologyCard(
                              _hoverReact,
                              'https://media3.giphy.com/media/KzJkzjggfGN5Py6nkT/giphy.gif',
                              purpleAccent,
                              MediaQuery.of(context).size.height / 22.5)),
                      Padding(
                          padding: const EdgeInsets.only(left: 44),
                          child: InkWell(
                              onTap: () {},
                              onHover: (value) {
                                setState(() {
                                  _hoverFigma = value;
                                });
                              },
                              child: technologyCard(
                                  _hoverFigma,
                                  'https://media3.giphy.com/media/KzJkzjggfGN5Py6nkT/giphy.gif',
                                  purpleAccent,
                                  MediaQuery.of(context).size.height / 22.5))),
                      Padding(
                          padding: const EdgeInsets.only(left: 44),
                          child: InkWell(
                              onTap: () {},
                              onHover: (value) {
                                setState(() {
                                  _hoverApi = value;
                                });
                              },
                              child: technologyCard(
                                  _hoverApi,
                                  'https://media3.giphy.com/media/KzJkzjggfGN5Py6nkT/giphy.gif',
                                  purpleAccent,
                                  MediaQuery.of(context).size.height / 22.5))),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 10.8),
                  child: Container(
                    height: 10,
                    width: MediaQuery.of(context).size.width / 2.66,
                    color: purpleAccent,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: Text("Learn More",
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width / 25.09,
                              color: absoluteZero,
                              fontWeight: FontWeight.w800))),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text("About this website",
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width / 33.8,
                              color: Colors.white,
                              fontWeight: FontWeight.w800))),
                )
              ]),
        ),
      ),
    ]);
  }
}

Widget technologyCard(bool hover, String url, Color color, double top) {
  return AnimatedPadding(
    duration: Duration(milliseconds: 500),
    padding: EdgeInsets.only(top: hover ? top - 20 : top),
    child: Container(
      width: 93.24,
      height: 87.09,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(27.65),
        color: color,
        boxShadow: [
          BoxShadow(
            // color: Color(0xff191919),
            blurRadius: 4,
            offset: Offset(hover ? 0 : 0, hover ? 8 : 0), // Shadow position
          ),
        ],
      ),
      child: Image(
        image: NetworkImage(url),
      ),
    ),
  );
}

Widget navBarIcon(hover, duration, before, after) {
  return AnimatedSwitcher(
      duration: Duration(milliseconds: duration),
      child: hover
          ? Image(key: ValueKey<int>(0), image: AssetImage(after))
          : Image(key: ValueKey<int>(1), image: AssetImage(before)));
}
