import 'package:covid_dashboard_app/models/data.dart';
import 'package:covid_dashboard_app/size_config.dart';
import 'package:flutter/material.dart';

import 'covid_bar_chart.dart';
import 'header.dart';
import 'region_tab.dart';
import 'stat_tab.dart';
import 'stats_grid.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return CustomScrollView(
      physics: ClampingScrollPhysics(),
      slivers: [
        ChartHeader(),
        RegionTab(),
        StatTab(),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          sliver: SliverToBoxAdapter(
            child: StatsGrid(),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.only(top: 20.0),
          sliver: SliverToBoxAdapter(
            child: CovidBarChart(covidCases: covidUSADailyNewCases),
          ),
        ),
      ],
    );
  }
}
