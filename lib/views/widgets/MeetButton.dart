import 'package:gmail_clone/utils/exports.dart';

class MeetButton extends StatelessWidget {
  final Function? onPressed;
  final String? title;
  final bool? isOutlined;
  MeetButton({this.onPressed, this.title, this.isOutlined});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed!();
      },
      child: Container(
        width: ScreenUtil().setWidth(155),
        height: ScreenUtil().setHeight(30),
        decoration: BoxDecoration(
            color: isOutlined! ? Colors.transparent : kBlueColor,
            border: Border.all(
                width: isOutlined! ? 0.8 : 0,
                color: isOutlined! ? kBlackColor : Colors.transparent),
            borderRadius: BorderRadius.circular(ScreenUtil().radius(20))),
        child: Center(
          child: Text(
            title!,
            style: kBodyTextStyle.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: ScreenUtil().setSp(14),
                color: isOutlined! ? kBlueColor : kWhiteColor),
          ),
        ),
      ),
    );
  }
}
