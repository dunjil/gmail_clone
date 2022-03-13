import '../../utils/exports.dart';

class DrawerTitle extends StatelessWidget {
  final String? title;
  DrawerTitle({this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        //horizontal: ScreenUtil().setWidth(15),
        vertical: ScreenUtil().setHeight(3),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: ScreenUtil().setWidth(20),
        vertical: ScreenUtil().setHeight(8),
      ),
      child: Text(
        title!,
        style: kBodyTextStyle.copyWith(
            letterSpacing: 1.5,
            fontWeight: FontWeight.w500,
            color: Colors.black54,
            fontSize: ScreenUtil().setSp(12)),
      ),
    );
  }
}
