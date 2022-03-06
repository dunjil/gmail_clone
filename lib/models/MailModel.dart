import '../utils/exports.dart';

class MailModel {
  final String? from;
  final String? title;
  final String? body;
  final String? date;
  final String? label;
  final Color? color;
  final bool? isRead;
  final String? mailClass;

  MailModel(
      {this.from,
      this.title,
      this.body,
      this.date,
      this.label,
      this.color,
      this.mailClass,
      this.isRead});

  factory MailModel.fromJson(Map data) {
    return MailModel(
      from: data['from'],
      title: data['title'],
      body: data['body'],
      date: data['date'],
      label: data['label'],
      color: Color(int.parse(data['color'])),
      isRead: data['isRead'],
      mailClass: data['mailClass'],
    );
  }

  List<Map> mails = [
    {
      'from': "LinkedIn Job Alerts",
      'title': "1 new job for 'data analyst'",
      'body': "View jobs in Luxembourg",
      'date': "5 Mar",
      'label': "",
      'color': "0xff5a78ad",
      "isRead": false,
      "mailClass": "Social"
    },
    {
      'from': "Kuda",
      'title': "Airtime Recharge'",
      'body': "Hi Duna, You just recharged Mtn 237046672",
      'date': "5 PM",
      'label': "",
      'color': "0xff8b83c9",
      "isRead": true,
      "mailClass": "None"
    },
    {
      'from': "Indeed",
      'title': "Front End Developer at Summitech a tech employer'",
      'body': "Hi Duna, You just recharged Mtn 2370466726623",
      'date': "6 Jul",
      'label': "",
      'color': "0xfff16d7e",
      "isRead": false,
      "mailClass": "Social",
    },
    {
      'from': "LinkedIn Job Alerts",
      'title': "1 new job for 'data analyst'",
      'body': "View jobs in Luxembourg",
      'date': "5 Mar",
      'label': "",
      'color': "0xff5a78ad",
      "isRead": false,
      "mailClass": "Social"
    },
    {
      'from': "Kuda",
      'title': "Airtime Recharge'",
      'body': "Hi Duna, You just recharged Mtn 237046672",
      'date': "5 PM",
      'label': "",
      'color': "0xff8b83c9",
      "isRead": true,
      "mailClass": "None"
    },
    {
      'from': "Indeed",
      'title': "Front End Developer at Summitech a tech employer'",
      'body': "Hi Duna, You just recharged Mtn 2370466726623",
      'date': "6 Jul",
      'label': "",
      'color': "0xfff16d7e",
      "isRead": false,
      "mailClass": "Social",
    },
    {
      'from': "LinkedIn Job Alerts",
      'title': "1 new job for 'data analyst'",
      'body': "View jobs in Luxembourg",
      'date': "5 Mar",
      'label': "",
      'color': "0xff5a78ad",
      "isRead": false,
      "mailClass": "Social"
    },
    {
      'from': "Kuda",
      'title': "Airtime Recharge'",
      'body': "Hi Duna, You just recharged Mtn 237046672",
      'date': "5 PM",
      'label': "",
      'color': "0xff8b83c9",
      "isRead": true,
      "mailClass": "None"
    },
    {
      'from': "Indeed",
      'title': "Front End Developer at Summitech a tech employer'",
      'body': "Hi Duna, You just recharged Mtn 2370466726623",
      'date': "6 Jul",
      'label': "",
      'color': "0xfff16d7e",
      "isRead": false,
      "mailClass": "Social",
    },
  ];
}
