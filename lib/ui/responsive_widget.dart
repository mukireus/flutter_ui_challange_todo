import 'package:flutter/material.dart';
import 'package:todo/ui/size_config.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget portraitLayout;
  final Widget landscapeLayout;

  const ResponsiveWidget(
      {Key key, @required this.portraitLayout, this.landscapeLayout})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (SizeConfig.isPortrait && SizeConfig.isMobilePortrait)
        ? portraitLayout
        : landscapeLayout;
  }
}
