import 'package:slaega_dashboard_panel/responsive_layout.dart';
import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget theBigBox(List<Widget> widgets) => Card(
          child: Row(children: widgets),
        );
    Widget box1() => ListTile(
          leading: Icon(Icons.book),
          title: SelectableText("Yoo"),
          subtitle: SelectableText("Looo"),
          trailing: Chip(label: SelectableText("3,999")),
        );
    Widget box2() => ListTile(
          leading: Icon(Icons.book),
          title: SelectableText("Yoo2"),
          subtitle: SelectableText("Looo2"),
          trailing: Chip(label: SelectableText("3,999")),
        );
    Widget box3() => ListTile(
          leading: Icon(Icons.book),
          title: SelectableText("Yoo3"),
          subtitle: SelectableText("Looo3"),
          trailing: Chip(label: SelectableText("3,999")),
        );
    return ResponsiveLayout(
        tiny: Container(),
        phone: theBigBox([box1()]),
        tablet: theBigBox([box1()]),
        largeTablet: theBigBox([box1(), box2()]),
        computer: theBigBox([box1(), box2(), box3()]));
  }
}
