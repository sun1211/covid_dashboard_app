import 'package:covid_dashboard_app/screen/home/components/header.dart';
import 'package:covid_dashboard_app/screen/home/components/own_test.dart';
import 'package:covid_dashboard_app/screen/home/components/prevention_tip.dart';
import 'package:covid_dashboard_app/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return CustomScrollView(
      physics: ClampingScrollPhysics(),
      slivers: [
        HomeHeader(),
        PreventionTip(),
        OwnTest(),
      ],
    );
  }
}
