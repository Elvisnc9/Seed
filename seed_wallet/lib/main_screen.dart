// ignore_for_file: prefer_const_constructors, unused_import, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:seed_wallet/constrainst.dart';
import 'package:sprung/sprung.dart';
import 'components/body.dart';
import 'components/header.dart';
import 'components/menulist.dart';
import 'components/profile_data.dart';
import 'components/transactions.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Row(
            children: [
            Expanded(
              flex: 1,
              child: Container(color: bgColor, child: MenuList()),
            ),
          
            Expanded(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  color: bgColor,
                  child: Column(
                    children: [
                      Header(),
                      SizedBox(height: 8),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 8,
                            child: Body(),
                          ),
                          
                  
                        SizedBox(height: 20),
                          Expanded(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Profile(),
                                  SizedBox(height: 10),
                                  Transactions()
                                ],
                              )),
                        ],
                      ),
        
        
                    ],
                  ),
                ),
              ),
            ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}

