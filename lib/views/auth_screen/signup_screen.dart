import 'package:sanskritimart/consts/consts.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool? isCheck = false;
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
                  Row(
                    children: [
                      Checkbox(
                          checkColor: whiteColor,
                          activeColor: redColor,
                          value: isCheck,
                          onChanged: (newValue) {
                            setState(() {
                              isCheck = newValue;
                            });
                          }),
                      10.widthBox,
                      Expanded(
                        child: RichText(
                            text: const TextSpan(children: [
                          TextSpan(
                              text: 'I agree to the ',
                              style: TextStyle(
                                  fontFamily: regular, color: fontGrey)),
                          TextSpan(
                              text: termandcond,
                              style: TextStyle(
                                  fontFamily: regular, color: redColor)),
                          TextSpan(
                              text: ' & ',
                              style: TextStyle(
                                  fontFamily: regular, color: fontGrey)),
                          TextSpan(
                              text: privacyPolicy,
                              style: TextStyle(
                                  fontFamily: regular, color: redColor))
                        ])),
                      ),
                    ],
                  ),
                  ourButton(() {}, (isCheck == false) ? fontGrey : redColor,
                          whiteColor, signup)
                      .box
                      .width(context.screenWidth - 50)
                      .make(),
                  10.heightBox,
                  RichText(
                      text: const TextSpan(children: [
                    TextSpan(
                        text: alreadyhaveanaccount,
                        style: TextStyle(fontFamily: bold, color: fontGrey)),
                    TextSpan(
                        text: " ",
                        style: TextStyle(fontFamily: bold, color: fontGrey)),
                    TextSpan(
                        text: login,
                        style: TextStyle(fontFamily: bold, color: redColor)),
                  ])).onTap(() {
                    Get.back();
                  })
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
