import 'package:sanskritimart/consts/consts.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Center(
              child: Column(
            children: [
              (context.screenHeight * 0.1).heightBox,
              applogoWidget(),
              10.heightBox,
              'Sign Up for $appname'
                  .text
                  .fontFamily(bold)
                  .white
                  .size(18)
                  .make(),
              10.heightBox,
              Column(
                children: [
                  customTextField(name, nameHint),
                  10.heightBox,
                  customTextField(email, emailHint),
                  10.heightBox,
                  customTextField(password, passwordHint),
                  10.heightBox,
                  customTextField(retypepassword, passwordHint),
                  15.heightBox,
                  ourButton(() {}, redColor, whiteColor, signup)
                      .box
                      .width(context.screenWidth - 50)
                      .make(),
                ],
              )
                  .box
                  .white
                  .rounded
                  .padding(const EdgeInsets.all(16))
                  .width(context.screenWidth - 70)
                  .shadowLg
                  .make(),
            ],
          ))),
    );
  }
}
