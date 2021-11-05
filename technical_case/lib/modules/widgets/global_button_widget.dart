import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final Color color;
  final String label;
  final Color labelColor;
  const DefaultButton({
    Key? key,
    required this.color,
    required this.label,
    required this.labelColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //  color: Colors.blueGrey[900],
      // color: color,
      height: MediaQuery.of(context).size.height * 0.09,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 05),
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: color,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
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
