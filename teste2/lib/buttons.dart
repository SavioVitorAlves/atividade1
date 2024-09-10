import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({required this.decremente, required this.increment,super.key});
  final void Function() increment;
  final void Function() decremente;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 30,
        right: 30,
        top: 20
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          ElevatedButton(
              onPressed: increment,
              child: const Icon(Icons.add),
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all<Size>(Size.fromWidth(150)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                ),
              ),
          ),
          ElevatedButton(
              onPressed: decremente,
              child: const Icon(Icons.remove),
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all<Size>(Size.fromWidth(150)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      )
                  )
              ),
          ),
        ],
      ),
    );
  }
}
