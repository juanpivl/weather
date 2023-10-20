import 'package:flutter/material.dart';

class AdsComponent extends StatelessWidget {
  const AdsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      width: double.infinity,
      height: 25,
      child: Center(child: Text('Aqui el anuncio jsjs')),
    );
  }
}
