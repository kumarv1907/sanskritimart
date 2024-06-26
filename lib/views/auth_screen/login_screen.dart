import 'package:sanskritimart/consts/consts.dart';
import 'package:sanskritimart/widgets_common/applogo_widgets.dart';
import 'package:sanskritimart/widgets_common/bg_widget.dart';
import 'package:sanskritimart/widgets_common/custom_textfields.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
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
                      onPressed: () {}, child: forgetPass.text.make()))
            ],
          )
              .box
              .white
              .rounded
              .padding(const EdgeInsets.all(16))
              .width(context.screenWidth - 70)
              .make(),
        ],
      ))),
    );
  }
}
