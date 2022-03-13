import 'package:gmail_clone/utils/exports.dart';

class NavigationScreen extends StatefulWidget {
  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int selectedIndex = 0;
  List<Widget> screens = [MailScreen(), MeetScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      body: screens[selectedIndex],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            indicatorColor: kBgColor,
            labelTextStyle: MaterialStateProperty.all(
                kBodyTextStyle.copyWith(fontSize: ScreenUtil().setSp(14)))),
        child: NavigationBar(
            height: ScreenUtil().setHeight(55),
            backgroundColor: kBgColor2,
            selectedIndex: selectedIndex,
            onDestinationSelected: (index) => setState(() {
                  selectedIndex = index;
                }),
            destinations: [
              NavigationDestination(
                  selectedIcon: Badge(
                    shape: BadgeShape.square,
                    padding: EdgeInsets.symmetric(
                        horizontal: ScreenUtil().setWidth(4.0),
                        vertical: ScreenUtil().setHeight(0.8)),
                    badgeColor: kRedColor,
                    position: BadgePosition.topEnd(),
                    borderRadius:
                        BorderRadius.circular(ScreenUtil().radius(10)),
                    badgeContent: Text(
                      '10',
                      style: kBodyTextStyle.copyWith(
                          color: kWhiteColor,
                          fontSize: ScreenUtil().setSp(10),
                          fontWeight: FontWeight.w500),
                    ),
                    child: Icon(
                      Icons.email,
                      size: ScreenUtil().setWidth(25),
                    ),
                  ),
                  icon: Badge(
                    shape: BadgeShape.square,
                    padding: EdgeInsets.symmetric(
                        horizontal: ScreenUtil().setWidth(4.0),
                        vertical: ScreenUtil().setHeight(0.8)),
                    badgeColor: kRedColor,
                    position: BadgePosition.topEnd(),
                    borderRadius:
                        BorderRadius.circular(ScreenUtil().radius(10)),
                    badgeContent: Text(
                      '10',
                      style: kBodyTextStyle.copyWith(
                          color: kWhiteColor,
                          fontSize: ScreenUtil().setSp(10),
                          fontWeight: FontWeight.w500),
                    ),
                    child: Icon(
                      Icons.email_outlined,
                      size: ScreenUtil().setWidth(25),
                    ),
                  ),
                  label: 'Mail'),
              NavigationDestination(
                  selectedIcon: Icon(
                    Icons.videocam,
                    size: ScreenUtil().setWidth(25),
                  ),
                  icon: Icon(
                    Icons.videocam_outlined,
                    size: ScreenUtil().setWidth(25),
                  ),
                  label: 'Meet'),
            ]),
      ),
    );
  }
}
