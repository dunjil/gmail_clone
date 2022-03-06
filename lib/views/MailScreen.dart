import 'package:flutter/rendering.dart';
import 'package:gmail_clone/utils/exports.dart';

class MailScreen extends StatefulWidget {
  @override
  _MailScreenState createState() => _MailScreenState();
}

class _MailScreenState extends State<MailScreen> {
  ScrollController? _scrollViewController;
  bool _showAppbar = true;
  bool isScrollingDown = false;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<MailProvider>(context, listen: false).getMails();
    });
    _scrollViewController = new ScrollController();
    _scrollViewController?.addListener(() {
      if (_scrollViewController?.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (!isScrollingDown) {
          isScrollingDown = true;
          _showAppbar = false;
          setState(() {});
        }
      }

      if (_scrollViewController?.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (isScrollingDown) {
          isScrollingDown = false;
          _showAppbar = true;
          setState(() {});
        }
      }
    });
  }

  @override
  void dispose() {
    _scrollViewController?.dispose();
    _scrollViewController?.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<MailProvider>(builder: (context, mailProvider, __) {
      List<MailModel> mails = mailProvider.mailList.reversed.toList();
      List<Widget> bodyItems = [
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: ScreenUtil().setHeight(5),
              horizontal: ScreenUtil().setWidth(10)),
          child: Text(
            "Inbox",
            style: kBodyTextStyle,
          ),
        )
      ];
      for (int i = 0; i < mails.length; i++) {
        bodyItems.add(MailCard(
          mailModel: mails[i],
        ));
      }
      return Scaffold(
        backgroundColor: kWhiteColor,
        floatingActionButton: AnimatedContainer(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(ScreenUtil().radius(20)),
            color: Color(0XFFC4E1F6),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 10,
                offset: Offset(0, 1.5), // changes position of shadow
              ),
            ],
          ),
          width: _showAppbar
              ? ScreenUtil().setWidth(135)
              : ScreenUtil().setWidth(55),
          height: ScreenUtil().setHeight(45),
          duration: Duration(milliseconds: 800),
          padding: EdgeInsets.symmetric(
              horizontal: ScreenUtil().setWidth(10),
              vertical: ScreenUtil().setHeight(5)),
          child: _showAppbar
              ? SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: ScreenUtil().setWidth(10),
                      ),
                      Icon(
                        Icons.edit,
                        color: kBlackColor,
                        size: ScreenUtil().setWidth(22),
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(14),
                      ),
                      SizedBox(
                          child: Text(
                        "Compose",
                        style: kBodyTextStyle.copyWith(
                            fontSize: ScreenUtil().setSp(13),
                            color: kBlackColor,
                            fontWeight: FontWeight.w400),
                      ))
                    ],
                  ),
                )
              : Icon(
                  Icons.edit,
                  color: kBlackColor,
                  size: ScreenUtil().setWidth(22),
                ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              AnimatedContainer(
                padding: EdgeInsets.symmetric(
                    horizontal: ScreenUtil().setWidth(5),
                    vertical: ScreenUtil().setHeight(8)),
                height: _showAppbar ? ScreenUtil().setHeight(56.0) : 0.0,
                duration: Duration(milliseconds: 500),
                child: AppBar(
                  backgroundColor: kWhiteColor,
                  toolbarHeight: ScreenUtil().setHeight(60),
                  elevation: 0,
                  title: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: kBgColor2,
                      borderRadius:
                          BorderRadius.circular(ScreenUtil().radius(100)),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          suffixIcon: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: ScreenUtil().setWidth(8),
                                vertical: ScreenUtil().setHeight(8)),
                            child: CircleAvatar(
                              radius: ScreenUtil().radius(10),
                              backgroundColor: kWhiteColor,
                              backgroundImage:
                                  AssetImage('./assets/my_img.jpg'),
                            ),
                          ),
                          prefixIcon: Icon(
                            Icons.menu,
                            color: kBlackColor,
                          ),
                          hintText: 'Search in emails',
                          contentPadding: EdgeInsets.all(15),
                          border: InputBorder.none),
                      onChanged: (value) {
                        // Do something
                      },
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: RefreshIndicator(
                    onRefresh: () async {
                      print('Refreshed');
                    },
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      controller: _scrollViewController,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: bodyItems,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
              indicatorColor: kBgColor,
              labelTextStyle: MaterialStateProperty.all(
                  kBodyTextStyle.copyWith(fontSize: ScreenUtil().setSp(14)))),
          child: NavigationBar(
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
                          horizontal: ScreenUtil().setWidth(6.0),
                          vertical: ScreenUtil().setHeight(2.0)),
                      badgeColor: Colors.red.shade900,
                      position: BadgePosition.topEnd(),
                      borderRadius:
                          BorderRadius.circular(ScreenUtil().radius(6)),
                      badgeContent: Text(
                        '23',
                        style: kBodyTextStyle.copyWith(
                            color: kWhiteColor,
                            fontSize: ScreenUtil().setSp(9),
                            fontWeight: FontWeight.w500),
                      ),
                      child: Icon(Icons.email),
                    ),
                    icon: Badge(
                      shape: BadgeShape.square,
                      padding: EdgeInsets.symmetric(
                          horizontal: ScreenUtil().setWidth(6.0),
                          vertical: ScreenUtil().setHeight(2.0)),
                      badgeColor: Colors.red.shade900,
                      position: BadgePosition.topEnd(),
                      borderRadius:
                          BorderRadius.circular(ScreenUtil().radius(6)),
                      badgeContent: Text(
                        '23',
                        style: kBodyTextStyle.copyWith(
                            color: kWhiteColor,
                            fontSize: ScreenUtil().setSp(9),
                            fontWeight: FontWeight.w500),
                      ),
                      child: Icon(Icons.email_outlined),
                    ),
                    label: 'Mail'),
                NavigationDestination(
                    tooltip: "23",
                    selectedIcon: Icon(
                      Icons.videocam,
                      size: ScreenUtil().setWidth(20),
                    ),
                    icon: Icon(Icons.videocam_outlined),
                    label: 'Meet'),
              ]),
        ),
      );
    });
  }
}
