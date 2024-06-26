import 'package:sanskritimart/consts/consts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
              'Log in to $appname'.text.fontFamily(bold).white.size(18).make(),
              10.heightBox,
              Column(
                children: [
                  customTextField(email, emailHint),
                  10.heightBox,
                  customTextField(password, passwordHint),
                  Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: () {}, child: forgetPass.text.make())),
                  5.heightBox,
                  ourButton(() {}, redColor, whiteColor, login)
                      .box
                      .width(context.screenWidth - 50)
                      .make(),
                  5.heightBox,
                  createNewAccount.text.color(fontGrey).make(),
                  5.heightBox,
                  ourButton(() {
                    Get.to(() => const SignupScreen());
                  }, golden, whiteColor, signup)
                      .box
                      .width(context.screenWidth - 50)
                      .make(),
                  10.heightBox,
                  loginWith.text.color(fontGrey).make(),
                  15.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        3,
                        (index) => CircleAvatar(
                              radius: 25,
                              backgroundColor: lightGrey,
                              child: Image.asset(
                                socialIconList[index],
                                width: 30,
                              ),
                            )),
                  )
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
