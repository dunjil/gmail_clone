import 'package:gmail_clone/utils/exports.dart';

class MeetScreen extends StatefulWidget {
  @override
  _MeetScreenState createState() => _MeetScreenState();
}

class _MeetScreenState extends State<MeetScreen> {
  CarouselController buttonCarouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        backgroundColor: kWhiteColor,
        toolbarHeight: ScreenUtil().setHeight(60),
        leading: IconButton(
          onPressed: () => Scaffold.of(context).openDrawer(),
          icon: Icon(
            Icons.menu,
            color: kBlackColor,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: ScreenUtil().setWidth(8),
                vertical: ScreenUtil().setHeight(8)),
            child: CircleAvatar(
              radius: ScreenUtil().radius(14),
              backgroundColor: kWhiteColor,
              backgroundImage: AssetImage('./assets/my_img.jpg'),
            ),
          )
        ],
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Meet",
          style: kBodyTextStyle.copyWith(
              color: kBlackColor,
              fontSize: ScreenUtil().setSp(19),
              fontWeight: FontWeight.w400),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MeetButton(
                  title: "New meeting",
                  onPressed: () {},
                  isOutlined: false,
                ),
                MeetButton(
                  title: "Join with a code",
                  onPressed: () {},
                  isOutlined: true,
                ),
              ],
            ),
            SizedBox(
              height: ScreenUtil().setHeight(20),
            ),
            CarouselSlider.builder(
              itemCount: slideImages.length,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) =>
                      Container(
                height: ScreenUtil().setHeight(600),
                padding:
                    EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(25)),
                child: Column(
                  children: [
                    SizedBox(
                      height: ScreenUtil().setHeight(80),
                    ),
                    SvgPicture.asset(
                      slideImages[itemIndex],
                      semanticsLabel: 'Logo',
                      width: ScreenUtil().setWidth(180),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(20.0),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: ScreenUtil().setWidth(27)),
                      child: Text(
                        slideTitles[itemIndex],
                        textAlign: TextAlign.center,
                        style: kTitleTextStyle.copyWith(
                            fontWeight: FontWeight.normal,
                            color: kMainBlackColor.withOpacity(0.9),
                            fontSize: ScreenUtil().setSp(21)),
                      ),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(12.0),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: ScreenUtil().setWidth(17.5)),
                      child: slideDescription[itemIndex],
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(55.0),
                    ),
                  ],
                ),
              ),
              options: CarouselOptions(
                  autoPlay: false,
                  enlargeCenterPage: true,
                  viewportFraction: 0.9,
                  aspectRatio: 0.69,
                  initialPage: 1,
                  onPageChanged: (index, reason) {
                    currentIndex = index;
                    setState(() {});
                  },
                  enableInfiniteScroll: false),
            ),
            AnimatedSmoothIndicator(
              activeIndex: currentIndex,
              count: 2,
              effect: SlideEffect(
                  dotHeight: ScreenUtil().setHeight(7),
                  dotWidth: ScreenUtil().setWidth(8),
                  radius: ScreenUtil().radius(20),
                  dotColor: Colors.grey.shade400,
                  activeDotColor: kBlueColor),
            )
          ],
        ),
      ),
    );
  }
}
