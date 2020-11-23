import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:kurtar_client/controllers/intro_controller.dart';
import 'package:kurtar_client/routes/app_pages.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/url_launcher.dart';

class IntroView extends GetView<IntroController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  PageController pageController;
  Animatable<Color> background;
  int pageCount;

  @override
  void initState() {
    _initialize();
    super.initState();
  }

  Color hexToColor(String code) {
    return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }

  void _initialize() {
    background = TweenSequence<Color>([
      TweenSequenceItem(
        weight: 1.0,
        tween: ColorTween(
          begin: hexToColor("#FF8080"),
          end: hexToColor("#FFA177"),
        ),
      ),
      TweenSequenceItem(
        weight: 1.0,
        tween: ColorTween(
          begin: hexToColor("#FFA177"),
          end: hexToColor('#F5CF76'),
        ),
      ),
      TweenSequenceItem(
        weight: 1.0,
        tween: ColorTween(
          begin: hexToColor('#F5CF76'),
          end: hexToColor('#FFA177'),
        ),
      ),
    ]);
    pageController = PageController();
  }

  @override
  void reassemble() {
    pageController.dispose();
    _initialize();
    super.reassemble();
  }

  void pageTracker(int page) {
    setState(() {
      pageCount = page;
    });
  }

  String _animationName = 'idle';

  void start() {
    setState(() {
      _animationName = 'spin';
    });
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          AnimatedBuilder(
            animation: pageController,
            builder: (context, child) {
              final color =
                  pageController.hasClients ? pageController.page / 3 : .0;

              return DecoratedBox(
                decoration: BoxDecoration(
                  color: background.evaluate(AlwaysStoppedAnimation(color)),
                ),
                child: child,
              );
            },
            child: PageView(
              controller: pageController,
              onPageChanged: pageTracker,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SvgPicture.asset(
                      'assets/images/connected.svg',
                      height: 280.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: Text(
                        "Bu uygulama sizi internet ve veri paketi gereksimi olmadan Tüm tanıdıklarınız ile iletişim Kurmanınızı sağlar",
                        maxLines: 4,
                        style: TextStyle(
                          letterSpacing: 0.5,
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SvgPicture.asset(
                      'assets/images/nature_fun_.svg',
                      height: 280.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: Text(
                        "Bu uygulama sizi internet ve veri paketi gereksimi olmadan Tüm tanıdıklarınız ile iletişim Kurmanınızı sağlar",
                        maxLines: 4,
                        style: TextStyle(
                          letterSpacing: 0.5,
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SvgPicture.asset(
                      'assets/images/adventure.svg',
                      height: 280.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: Text(
                        "Bu uygulama sizi internet ve veri paketi gereksimi olmadan Tüm tanıdıklarınız ile iletişim Kurmanınızı sağlar",
                        maxLines: 4,
                        style: TextStyle(
                          letterSpacing: 0.5,
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      child: FlareActor(
                        'assets/images/in_progress2.flr',
                        alignment: Alignment.center,
                        fit: BoxFit.contain,
                        animation: _animationName,
                        callback: (_) {
                          Get.toNamed(Routes.LOGIN);
                          // _launchURL("google.navigation:q=38.3853, 27.1331");
                        },
                      ),
                      height: 280.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: Text(
                        "Bu uygulama sizi internet ve  paketi gereksimi olmadan Tüm tanıdıklarınız ile iletişim Kurmanınızı sağlar",
                        maxLines: 4,
                        style: TextStyle(
                          letterSpacing: 0.5,
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(70, 0, 70, 0),
                      child: MaterialButton(
                        height: 60,
                        onPressed: start,
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                        ),
                        color: Colors.white,
                        child: Text(
                          'Başlayalım',
                          style: TextStyle(color: Colors.black54, fontSize: 17),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          (pageCount != 3)
              ? Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 50.0),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: SmoothPageIndicator(
                      controller: pageController,
                      count: 4,
                      effect: WormEffect(),
                    ),
                  ),
                )
              : Padding(
                  padding: EdgeInsets.all(0.0),
                ),
        ],
      ),
    );
  }
}
