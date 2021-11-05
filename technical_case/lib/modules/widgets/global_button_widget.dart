import 'package:flutter/material.dart';
import 'package:technical_case/modules/router/routes.dart';

class DefaultButton extends StatelessWidget {
  final Color color;
  final String label;
  final Color labelColor;
  final bool isPageLogin;
  const DefaultButton({
    Key? key,
    required this.color,
    required this.label,
    required this.labelColor,
    this.isPageLogin = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.09,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 20, vertical: isPageLogin ? 25.0 : 5.0),
        child: Column(
          children: [
            Expanded(
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: color,
                      side: const BorderSide(color: Colors.blue, width: 2)),
                  onPressed: () => isPageLogin
                      ? null
                      : Navigator.pushNamed(context, loginScreenRoute),
                  child: Text(
                    label,
                    style: TextStyle(color: labelColor, fontSize: 14),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
