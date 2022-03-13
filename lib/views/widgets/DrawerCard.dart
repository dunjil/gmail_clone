import 'package:gmail_clone/utils/exports.dart';

class DrawerCard extends StatelessWidget {
  final IconData? icon;
  final String? title;
  final String? trailing;
  final bool? isActive;
  final bool? isLabel;
  DrawerCard(
      {this.icon,
      this.title,
      this.trailing,
      this.isActive = false,
      this.isLabel = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(38),
      decoration: BoxDecoration(
          color: isActive! ? kSailColor : Colors.transparent,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(ScreenUtil().radius(50)),
            bottomRight: Radius.circular(ScreenUtil().radius(50)),
          )),
      margin: EdgeInsets.only(
        right: ScreenUtil().setWidth(10),
        //bottom: ScreenUtil().setHeight(1),
        top: ScreenUtil().setHeight(1),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: ScreenUtil().setWidth(20),
        vertical: ScreenUtil().setHeight(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  icon,
                  size: ScreenUtil().setWidth(23),
                  color:
                      isLabel! ? Colors.black54 : Colors.black.withOpacity(0.8),
                ),
                SizedBox(width: ScreenUtil().setWidth(25)),
                Text(
                  title!,
                  style: kBodyTextStyle.copyWith(
                      fontWeight: FontWeight.w500,
                      color: Colors.black.withOpacity(0.8),
                      fontSize: ScreenUtil().setSp(14)),
                ),
              ],
            ),
          ),
          Text(
            trailing!,
            style: kBodyTextStyle.copyWith(
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.8),
                fontSize: ScreenUtil().setSp(12)),
          ),
        ],
      ),
    );
  }
}
