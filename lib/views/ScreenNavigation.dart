import 'package:gmail_clone/utils/exports.dart';

class NavigationScreen extends StatefulWidget {
  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int selectedIndex=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
          backgroundColor: kBgColor2,
          selectedIndex: selectedIndex,
          destinations: [
            NavigationDestination(
                icon: Icon(Icons.email_outlined), label: 'Mail'),
            NavigationDestination(
                icon: Icon(Icons.videocam_outlined), label: 'Meet'),
          ]),
    );
  }
}
