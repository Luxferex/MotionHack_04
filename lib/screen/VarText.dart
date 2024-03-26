import 'package:flutter/material.dart';

// ignore: must_be_immutable
class varText extends StatelessWidget {
  ///This is a builder for an intro screen
  ///
  ///

  /// title of your slide
  ///[String]
  final String? title;

  ///description of your slide
  ///[String]
  final String? description;

  ///image path for your slide
  ///[String]
  final String? imageAsset;

  ///textStyle for your slide
  ///[TextStyle]
  final TextStyle? textStyle;

  ///background color for your slide header
  ///[Color]
  final Color headerBgColor;

  ///padding for the your slide header
  ///[EdgeInsets]
  final EdgeInsets headerPadding;

  ///widget to use as the header part of your screen
  ///[Widget]
  final Widget? header;
  final Widget? footer;

  int? _pageIndex;

  varText({
    required String this.title,
    this.headerPadding = const EdgeInsets.all(12),
    required String this.description,
    this.header,
    this.headerBgColor = Colors.white,
    this.textStyle,
    this.imageAsset,
    this.footer,
  });

  set index(val) => this._pageIndex = val;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Container(
            height: screenSize.height * 0.7,
            padding: headerPadding,
            decoration: BoxDecoration(
              color: headerBgColor,
            ),
            child: Center(
              child: imageAsset != null
                  ? Image.asset(
                      imageAsset!,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: screenSize.height * .3,
                    )
                  : this.header ??
                      Container(
                        child: Text(
                          "${this._pageIndex ?? 1}",
                          style: TextStyle(
                            fontSize: 300,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
            ),
          ),
        ],
      ),
    );
  }
}
