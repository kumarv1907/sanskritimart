import 'package:sanskritimart/consts/consts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  changeScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(() => const LoginScreen());
    });
  }

  @override
  void initState() {
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Center(
          child: Column(
        children: [
          Align(
              alignment: Alignment.topLeft,
              child: Image.asset(icSplashBg, width: 300)),
          20.heightBox,
          applogoWidget(),
          10.heightBox,
          appname.text.fontFamily(bold).size(35).white.make(),
          5.heightBox,
          appversion.text.white.make(),
          const Spacer(),
          credits.text.fontFamily(semibold).make(),
          20.heightBox,
        ],
      )),
    );
  }
}
