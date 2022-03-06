import 'package:gmail_clone/utils/exports.dart';

class MailProvider extends ChangeNotifier {
  List<MailModel> _mailList = [];
  List<MailModel> get mailList => _mailList;

  MailModel _mailModel = MailModel();
  getMails() {
    var mails = _mailModel.mails;

    _mailList = List<MailModel>.from(
      mails.map(
        (model) => MailModel.fromJson(model),
      ),
    );
    notifyListeners();
  }
}
