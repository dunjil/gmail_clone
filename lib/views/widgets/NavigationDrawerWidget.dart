import '../../utils/exports.dart';

class NavigationDrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 3,
      backgroundColor: kDrawerColor,
      child: Container(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(
                left: ScreenUtil().setWidth(20),
                right: ScreenUtil().setWidth(15),
                top: ScreenUtil().setHeight(15),
                bottom: ScreenUtil().setHeight(8),
              ),
              child: Text(
                "Gmail",
                style: kBodyTextStyle.copyWith(
                    fontWeight: FontWeight.w400,
                    color: kCrimsonRedColor,
                    fontSize: ScreenUtil().setSp(22)),
              ),
            ),
            Divider(
              thickness: 0.3,
              color: Colors.grey,
            ),
            DrawerCard(
              icon: Icons.all_inbox,
              title: "All Inbox",
              trailing: "",
            ),
            Divider(
              thickness: 0.3,
              color: Colors.grey,
            ),
            DrawerCard(
              icon: Icons.inbox_rounded,
              title: "Inbox",
              trailing: "67",
              isActive: true,
            ),
            DrawerTitle(
              title: "Recent labels",
            ),
            DrawerCard(
              icon: Icons.label_outline,
              title: "Personal",
              trailing: "",
              isLabel: true,
            ),
            DrawerTitle(
              title: "All labels",
            ),
            DrawerCard(
              icon: Icons.star_border,
              title: "Starred",
              trailing: "",
            ),
            DrawerCard(
              icon: Icons.schedule_outlined,
              title: "Snoozed",
              trailing: "",
            ),
            DrawerCard(
              icon: Icons.label_important_outline,
              title: "Important",
              trailing: "31",
            ),
            DrawerCard(
              icon: Icons.send_sharp,
              title: "Sent",
              trailing: "1",
            ),
            DrawerCard(
              icon: Icons.schedule_send_outlined,
              title: "Scheduled",
              trailing: "",
            ),
            DrawerCard(
              icon: Icons.outbox_outlined,
              title: "Outbox",
              trailing: "",
            ),
            DrawerCard(
              icon: Icons.insert_drive_file_outlined,
              title: "Drafts",
              trailing: "8",
            ),
            DrawerCard(
              icon: Icons.mail_outlined,
              title: "All mail",
              trailing: "69",
            ),
            DrawerCard(
              icon: Icons.dangerous_sharp,
              title: "Spam",
              trailing: "31",
            ),
            DrawerCard(
              icon: Icons.delete_outline_outlined,
              title: "Bin",
              trailing: "42",
            ),
            DrawerCard(
              icon: Icons.label_outline,
              title: "Personal",
              trailing: "",
              isLabel: true,
            ),
            DrawerCard(
              icon: Icons.label_outline,
              title: "Receipts",
              trailing: "",
              isLabel: true,
            ),
            DrawerCard(
              icon: Icons.label_outline,
              title: "Unwanted",
              trailing: "",
              isLabel: true,
            ),
            DrawerCard(
              icon: Icons.label_outline,
              title: "Work",
              trailing: "2",
              isLabel: true,
            ),
            DrawerTitle(
              title: "Google apps",
            ),
            DrawerCard(
              icon: Icons.calendar_today_sharp,
              title: "Calendar",
              trailing: "",
            ),
            DrawerCard(
              icon: Icons.account_circle,
              title: "Contacts",
              trailing: "",
            ),
            Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),
            DrawerCard(
              icon: Icons.settings_sharp,
              title: "Settings",
              trailing: "",
            ),
            DrawerCard(
              icon: Icons.help,
              title: "Help and feedback",
              trailing: "",
            ),
          ],
        ),
      ),
    );
  }
}
