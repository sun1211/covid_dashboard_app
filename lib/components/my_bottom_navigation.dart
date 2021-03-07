import 'package:covid_dashboard_app/constants.dart';
import 'package:covid_dashboard_app/models/menu_state.dart';
import 'package:covid_dashboard_app/screen/chart/chart_screen.dart';
import 'package:covid_dashboard_app/screen/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyBottomNavigation extends StatelessWidget {
  const MyBottomNavigation({
    Key key,
    @required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/home.svg",
                  color: MenuState.home == selectedMenu
                      ? kPrimaryColor
                      : kInActiveIconColor,
                ),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                ),
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/chart.svg",
                  color: MenuState.chart == selectedMenu
                      ? kPrimaryColor
                      : kInActiveIconColor,
                ),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChartScreen(),
                  ),
                ),
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/calendar.svg",
                  color: MenuState.schedule == selectedMenu
                      ? kPrimaryColor
                      : kInActiveIconColor,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/infor.svg",
                  color: MenuState.infor == selectedMenu
                      ? kPrimaryColor
                      : kInActiveIconColor,
                ),
                onPressed: () {},
              ),
            ],
          )),
    );
  }
}
