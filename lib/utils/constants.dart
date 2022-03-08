import 'exports.dart';

const kPrimaryColor = Color(0XFF183EAD);
const kWhiteColor = Color(0XFFFFFFFF);
const kBlackColor = Color(0XFF1F1F1F);
const kMainBlackColor = Color(0XFF000000);
const kDescriptionTextColor = Color(0XFF454746);
const kDotsColor = Color(0XFFD2D2D2);
const kBgColor = Color(0XFFC3E7FF);
const kBgColor2 = Color(0XFFEEF2FB);
const kRedColor = Color(0XFFB3261C);
const kBlueColor = Color(0XFF0B57CF);
const kButtonOutlineColor = Color(0XFF333635);

//Body Text style
final kBodyTextStyle = TextStyle(
  color: kBlackColor,
  fontSize: ScreenUtil().setSp(12),
  fontWeight: FontWeight.normal,
);
final kBodyTextStyle2 = TextStyle(
  color: kMainBlackColor,
  fontSize: ScreenUtil().setSp(14),
  fontWeight: FontWeight.normal,
);

//Body Text style
final kTitleTextStyle = TextStyle(
  color: kMainBlackColor,
  fontSize: ScreenUtil().setSp(14),
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w500,
);

//Body Text style
final kFromTextStyle = TextStyle(
  color: kMainBlackColor,
  fontFamily: 'Roboto',
  fontSize: ScreenUtil().setSp(16),
  fontWeight: FontWeight.w500,
);

//Button TextStyle
final kButtonTextStyle = TextStyle(
  color: kWhiteColor,
  fontFamily: 'Roboto',
  fontSize: ScreenUtil().setSp(14),
  fontWeight: FontWeight.w400,
);

List<String> slideImages = ["assets/meet1.svg", "assets/meet2.svg"];
List<String> slideTitles = [
  "Get a link that you can share",
  "Your meeting is safe"
];
List<Widget> slideDescription = [
  RichText(
    textAlign: TextAlign.center,
    text: TextSpan(children: [
      TextSpan(
        text: "Tap ",
        style: kBodyTextStyle2,
      ),
      TextSpan(
        text: "New meeting ",
        style: kBodyTextStyle2.copyWith(fontWeight: FontWeight.w500),
      ),
      TextSpan(
          style: kBodyTextStyle2,
          text:
              "to get a link that you can send to people that you want to meet with"),
    ]),
  ),
  Text(
    "No one can join a meeting unless invited or admitted by the host",
    textAlign: TextAlign.center,
    style: kBodyTextStyle2,
  )
];
