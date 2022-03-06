import './utils/exports.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(GMailClone());
}

class GMailClone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      builder: () => MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => MailProvider(),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(primaryColor: kWhiteColor, fontFamily: 'Roboto'),
          home: MailScreen(),
        ),
      ),
    );
  }
}
