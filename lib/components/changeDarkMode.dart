import 'package:clima/components/darkModeNotifierComponent.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChangeDarkModeComponent extends StatelessWidget {
  const ChangeDarkModeComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 3,
      right: 3,
      child: InkWell(
        onTap: () {
          Provider.of<DarkModeNotifier>(context, listen: false)
              .toggleDarkMode();
          print('dasdas');
        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.red),
          height: 40,
          width: 40,
          child: Icon(Icons.star),
        ),
      ),
    );
  }
}
