import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion_hack_1/pages/indicator.dart';
import 'package:motion_hack_1/buttons/registerbutton.dart';
import 'package:motion_hack_1/screen/VarText.dart';
import 'package:motion_hack_1/buttons/loginbutton.dart';

enum IndicatorType { CIRCLE, LINE, DIAMOND }

enum FooterShape { NORMAL, CURVED_TOP, CURVED_BOTTOM }

class IntroScreens extends StatefulWidget {
//  PageController get controller => this.createState()._controller;

  @override
  _IntroScreensState createState() => _IntroScreensState();

  ///sets the indicator type for your slides
  ///[IndicatorType]
  final IndicatorType indicatorType;

  ///sets the next widget, the one used to move to the next screen
  ///[Widget]
  final Widget? nextWidget;
  final Widget? backWidget;

  ///sets the done widget, the one used to end the slides
  ///[Widget]
  final Widget? doneWidget;

  final String appTitle;

  ///set the radius of the footer part of your slides
  ///[double]
  final double footerRadius;

  ///sets the viewport fraction of your controller
  ///[double]
  final double viewPortFraction;

  ///sets your slides
  ///[List<IntroScreen>]
  final List<varText> slides;

  ///defines what to do when the last slide is reached
  ///[Function]
  final Function onDone;

  /// set the color of the active indicator
  ///[Color]
  final Color activeDotColor;

  ///set the color of an inactive indicator
  ///[Color]
  final Color? inactiveDotColor;

  ///sets the padding of the footer part of your slides
  ///[EdgeInsets]
  final EdgeInsets footerPadding;

  ///sets the background color of the footer part of your slides
  ///[Color]
  final Color footerBgColor;

  ///sets the text color of your slides
  ///[Color]
  final Color textColor;

  ///sets the colors of the gradient for the footer widget of your slides
  ///[List<Color>]
  final List<Color> footerGradients;

  ///[ScrollPhysics]
  ///sets the physics for the page view
  final ScrollPhysics physics;

  ///[Color]
  ///sets the wrapper container's background color, defaults to white
  final Color containerBg;
  final Widget? footer;

  const IntroScreens({
    required this.slides,
    this.footerRadius = 12.0,
    this.footerGradients = const [],
    this.containerBg = Colors.white,
    required this.onDone,
    this.indicatorType = IndicatorType.CIRCLE,
    this.appTitle = '',
    this.physics = const BouncingScrollPhysics(),
    this.nextWidget,
    this.backWidget,
    this.doneWidget,
    this.activeDotColor = Colors.white,
    this.inactiveDotColor,
    this.viewPortFraction = 1.0,
    this.textColor = Colors.white,
    this.footerPadding = const EdgeInsets.all(24),
    this.footerBgColor = const Color(0xff51adf6),
    this.footer,
  }) : assert(slides.length > 0);
}

class _IntroScreensState extends State<IntroScreens>
    with TickerProviderStateMixin {
  PageController? _controller;
  double? pageOffset = 0;
  int currentPage = 0;
  bool lastPage = false;
  late AnimationController animationController;
  varText? currentScreen;

  @override
  void initState() {
    super.initState();
    _controller = PageController(
      initialPage: currentPage,
      viewportFraction: widget.viewPortFraction,
    )..addListener(() {
        pageOffset = _controller!.page;
      });

    currentScreen = widget.slides[0];
    animationController =
        AnimationController(duration: Duration(milliseconds: 500), vsync: this);
  }

  TextStyle get textStyle =>
      currentScreen!.textStyle ??
      Theme.of(context).textTheme.bodyText1 ??
      GoogleFonts.lato(
        fontSize: 18,
        color: Colors.white,
        fontWeight: FontWeight.normal,
      );

  Widget get done =>
      this.widget.doneWidget ??
      Icon(
        Icons.check,
        size: 28,
        color: widget.textColor,
      );

  @override
  void dispose() {
    _controller!.dispose();
    animationController.dispose();
    super.dispose();
  }

  bool get existGradientColors => widget.footerGradients.length > 0;

  LinearGradient get gradients => existGradientColors
      ? LinearGradient(
          colors: widget.footerGradients,
          begin: Alignment.topLeft,
          end: Alignment.topRight)
      : LinearGradient(
          colors: [
            widget.footerBgColor,
            widget.footerBgColor,
          ],
        );

  int getCurrentPage() => _controller!.page!.floor();

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor:
            currentScreen?.headerBgColor.withOpacity(.8) ?? Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor:
            currentScreen?.headerBgColor ?? Colors.transparent,
      ),
      child: Container(
        color: this.widget.containerBg,
//        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Stack(
          clipBehavior: Clip.none,
          children: <Widget>[
            PageView.builder(
              itemCount: widget.slides.length,
              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                  currentScreen = widget.slides[currentPage];
                  setState(() {
                    currentScreen!.index = currentPage + 1;
                  });
                  if (currentPage == widget.slides.length - 1) {
                    lastPage = true;
                    animationController.forward();
                  } else {
                    lastPage = false;
                    animationController.reverse();
                  }
                });
              },
              controller: _controller,
              physics: widget.physics,
              itemBuilder: (context, index) {
                if (index == pageOffset!.floor()) {
                  return AnimatedBuilder(
                      animation: _controller!,
                      builder: (context, _) {
                        return buildPage(
                          index: index,
                          angle: pageOffset! - index,
                        );
                      });
                } else if (index == pageOffset!.floor() + 1) {
                  return AnimatedBuilder(
                    animation: _controller!,
                    builder: (context, _) {
                      return buildPage(
                        index: index,
                        angle: pageOffset! - index,
                      );
                    },
                  );
                }
                return buildPage(index: index);
              },
            ),
            //footer widget
            Positioned.fill(
              bottom: 0,
              left: 0,
              right: 0,
              top: MediaQuery.of(context).size.height * .50,
              child: Container(
                padding: widget.footerPadding,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(widget.footerRadius.toDouble()),
                    topLeft: Radius.circular(widget.footerRadius.toDouble()),
                  ),
                  color: widget.footerBgColor,
                  gradient: gradients,
                ),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 24,
                      ),
                      Text(
                        currentScreen!.title!,
                        softWrap: true,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: textStyle.apply(
                          color: widget.textColor,
                          fontWeightDelta: 12,
                          fontSizeDelta: 10,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Text(
                        currentScreen!.description!,
                        softWrap: true,
                        style: textStyle.apply(
                          color: widget.textColor,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      if (currentPage == 2) LoginButton(),
                      if (currentPage == 2) RegisterButton(),
                    ],
                  ),
                ),
              ),
            ),
            //controls widget
            Positioned(
              left: 0,
              right: 0,
              bottom: 18,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 4.0),
                child: Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      if (currentPage > 0)
                        Material(
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                          type: MaterialType.transparency,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(100),
                            onTap: () => _controller!.previousPage(
                              duration: Duration(milliseconds: 800),
                              curve: Curves.fastOutSlowIn,
                            ),
                            child: widget.backWidget ??
                                Text(
                                  "<-Kembali", // Text for Back button
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                          ),
                        ),
                      Expanded(
                        child: Container(
                          width: 160,
                          child: PageIndicator(
                            type: widget.indicatorType,
                            currentIndex: currentPage,
                            activeDotColor: widget.activeDotColor,
                            inactiveDotColor: widget.inactiveDotColor ??
                                widget.activeDotColor.withOpacity(.5),
                            pageCount: widget.slides.length,
                            onTap: () {
                              _controller!.animateTo(
                                _controller!.page!,
                                duration: Duration(
                                  milliseconds: 400,
                                ),
                                curve: Curves.fastOutSlowIn,
                              );
                            },
                          ),
                        ),
                      ),
                      Material(
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        type: MaterialType.transparency,
                        child: lastPage
                            ? InkWell(
                                borderRadius: BorderRadius.circular(100),
                                onTap: widget.onDone as void Function()?,
                                child: done,
                              )
                            : InkWell(
                                borderRadius: BorderRadius.circular(100),
                                child: Text(
                                  "Lanjut ->",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                                onTap: () => _controller!.nextPage(
                                    duration: Duration(milliseconds: 800),
                                    curve: Curves.fastOutSlowIn),
                              ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPage(
      {required int index, double angle = 0.0, double scale = 1.0}) {
    // print(pageOffset - index);
    return Container(
      color: Colors.transparent,
      child: Transform(
        child: widget.slides[index],
        transform: Matrix4.identity()
          ..setEntry(3, 2, .001)
          ..rotateY(angle),
      ),
    );
  }
}
