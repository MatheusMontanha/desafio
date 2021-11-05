import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:technical_case/modules/login_module/widgets/login_text_field.dart';
import 'package:technical_case/modules/utils/localization/assets_types.dart';
import 'package:technical_case/modules/utils/localization/localization.dart';
import 'package:technical_case/modules/widgets/asset_widget.dart';
import 'package:technical_case/modules/widgets/widgets.dart';

class LoginPageWidget extends StatefulWidget {
  const LoginPageWidget({Key? key}) : super(key: key);

  @override
  _LoginPageWidgetState createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget> {
  final loginTexts = LocalizationStrings().getLoginStrings();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: const Key("login_widget_page_key"),
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              child: Column(
                key: const Key("login_widget_items_key"),
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const AssetWidget(
                    maxHeight: 30,
                    assetChosen: AssetChosen.toroLogoWithName,
                    alignment: Alignment.centerLeft,
                  ),
                  RichText(
                    text: TextSpan(
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                      children: [
                        TextSpan(text: loginTexts.titleFirstPartLoginPage),
                        TextSpan(
                          text: loginTexts.titleSecondPartLoginPage,
                          style: const TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: loginTexts.titleThirdPartLoginPage,
                        ),
                      ],
                    ),
                  ),
                  LoginTextField(
                    label: loginTexts.titleTextFormFieldEmail,
                  ),
                  LoginTextField(
                    label: loginTexts.titleTextFormFieldPassword,
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Container(
          key: const Key("login_widget_bottom_navigation_key"),
          height: MediaQuery.of(context).size.height * 0.13,
          color: Colors.blueGrey[900],
          child: DefaultButton(
            color: Colors.blue,
            label: loginTexts.singInTextButton,
            labelColor: Colors.white,
            isPageLogin: true,
          ),
        ),
      ),
    );
  }
}
