import 'package:gmail_clone/utils/exports.dart';

class MailCard extends StatelessWidget {
  final MailModel? mailModel;
  MailCard({this.mailModel});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          vertical: ScreenUtil().setHeight(10),
          horizontal: ScreenUtil().setWidth(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: ScreenUtil().radius(20),
                  backgroundColor: mailModel!.color,
                  child: Text(
                    mailModel!.from!.substring(0, 1).toUpperCase(),
                    style: kTitleTextStyle.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: ScreenUtil().setSp(18),
                        color: kWhiteColor),
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(5),
                ),
              ],
            ),
          ),
          SizedBox(
            width: ScreenUtil().setWidth(20),
          ),
          Expanded(
            flex: 7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                mailModel!.mailClass != "None"
                    ? RichText(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        text: TextSpan(
                          style: kFromTextStyle.copyWith(
                              fontWeight: mailModel!.isRead!
                                  ? FontWeight.w500
                                  : FontWeight.normal),
                          children: [
                            WidgetSpan(
                              child: Icon(
                                Icons.label_important,
                                size: ScreenUtil().setWidth(18),
                                color: Color(0XFF1B6DF4),
                              ),
                            ),
                            TextSpan(
                              text: " " + mailModel!.from!,
                            ),
                          ],
                        ),
                      )
                    : RichText(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        text: TextSpan(
                          style: kFromTextStyle.copyWith(
                              fontWeight: mailModel!.isRead!
                                  ? FontWeight.w500
                                  : FontWeight.normal),
                          children: [
                            TextSpan(
                              text: mailModel!.from!,
                            ),
                          ],
                        ),
                      ),
                SizedBox(
                  height: ScreenUtil().setHeight(5),
                ),
                Text(
                  mailModel!.title!,
                  overflow: TextOverflow.ellipsis,
                  style: kTitleTextStyle.copyWith(
                      fontWeight: mailModel!.isRead!
                          ? FontWeight.w500
                          : FontWeight.normal),
                  maxLines: 1,
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(5),
                ),
                Text(
                  mailModel!.body!,
                  overflow: TextOverflow.ellipsis,
                  style: kBodyTextStyle.copyWith(
                      fontWeight: mailModel!.isRead!
                          ? FontWeight.w500
                          : FontWeight.normal),
                  maxLines: 1,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "5 Mar",
                  style: kBodyTextStyle.copyWith(
                      fontWeight: mailModel!.isRead!
                          ? FontWeight.w500
                          : FontWeight.normal),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(25),
                ),
                Icon(
                  Icons.star_border,
                  size: ScreenUtil().setWidth(20),
                  color: kBlackColor.withOpacity(0.7),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
