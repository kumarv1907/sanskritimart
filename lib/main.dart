import 'package:get/get.dart';
import 'package:sanskritimart/views/splash_screen/splash_screen.dart';

import 'consts/consts.dart';

void main() {
  runApp(const SanskritiMart());
}

class SanskritiMart extends StatelessWidget {
  const SanskritiMart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: appname,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
        fontFamily: regular,
      ),
      home: const SplashScreen(),
    );
  }
}
