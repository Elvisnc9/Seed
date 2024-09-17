// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class SellCoins extends StatefulWidget {
  const SellCoins({super.key});

  @override
  State<SellCoins> createState() => _SellCoinsState();
}

class _SellCoinsState extends State<SellCoins> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Column(children: [
        Text(
          'Coins',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            
          ),
        )
      ],),
    );
  }
}