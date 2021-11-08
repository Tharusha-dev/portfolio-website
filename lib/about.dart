import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'dart:html';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  final Color backgrounColor = Color(0xff292929);
  final Color purpleAccent = Color(0xff700B97);
  final Color absoluteZero = Color(0xff0048BA);
  final Color grayAccent = Color(0xff383838);
  final Color grennAccent = Color(0xff59BEA0);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgrounColor,
      child: Center(
          child: IFrameView(
        embedUrl: "https://trinket.io/embed/python/7f6ad4ad4a",
      )),
    );
  }
}

class IFrameView extends StatefulWidget {
  final String embedUrl;
  const IFrameView({Key? key, required this.embedUrl}) : super(key: key);

  @override
  _IFrameViewState createState() => _IFrameViewState();
}

class _IFrameViewState extends State<IFrameView> {
  final Color backgrounColor = Color(0xff292929);

  @override
  void initState() {
    super.initState();
    final IFrameElement _iframeElement = IFrameElement();
    _iframeElement.height = '500';
    _iframeElement.width = '500';
    _iframeElement.src = widget.embedUrl;
    _iframeElement.style.border = 'none';

// ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
      'iframeElement',
      (int viewId) => _iframeElement,
    );
  }

  Widget? _iframeWidget = HtmlElementView(
    key: UniqueKey(),
    viewType: 'iframeElement',
  );

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(height: 500, width: 500, child: _iframeWidget),
        Container(
          height: 518,
          width: 518,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
              width: 12,
              color: backgrounColor,
              style: BorderStyle.solid,
            ),
          ),
        ),
      ],
    );
  }
}
