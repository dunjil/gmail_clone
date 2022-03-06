import 'exports.dart';

const kPrimaryColor = Color(0XFF183EAD);
const kWhiteColor = Color(0XFFFFFFFF);
const kBlackColor = Color(0XFF242424);
const kMainBlackColor = Color(0XFF000000);
const kDescriptionTextColor = Color(0XFF002434);
const kDotsColor = Color(0XFFD2D2D2);
const kBgColor = Color(0XFFC4E1F6);
const kBgColor2 = Color(0XFFE8F0F8);

//Body Text style
final kBodyTextStyle = TextStyle(
  color: kBlackColor,
  fontSize: ScreenUtil().setSp(12),
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
