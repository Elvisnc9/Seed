
// ignore_for_file: prefer_const_constructors, deprecated_member_use, unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constrainst.dart';
import 'hovering.dart';
import 'theme_toogle.dart';

class MenuList extends StatelessWidget {
  const MenuList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
      children: [
      
       Padding(
         padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
         child: SizedBox(child: Image.asset('assets/Logos/seed.png', width: 90,)),
       ),
        
            DrawerListTitle(
              svgSrc: 'assets/Logos/apps.svg',
              title: 'OverView' ,
              press: () {},
            ),
             DrawerListTitle(
              svgSrc: 'assets/Logos/chat-arrow-grow.svg',
              title: 'Trade' ,
              press: () {},
            ),
             DrawerListTitle(
              svgSrc: 'assets/Logos/wallet.svg',
              title: 'Wallet' ,
              press: () {},
            ),
             DrawerListTitle(
              svgSrc: 'assets/Logos/chart-pie-alt.svg',
              title: 'Analytics' ,
              press: () {},
            ),
             DrawerListTitle(
              svgSrc: 'assets/Logos/users-alt.svg',
              title: 'Community' ,
              press: () {},
            ),
             DrawerListTitle(
              svgSrc: 'assets/Logos/envelope.svg',
              title: 'Message' ,
              press: () {},
            ),
      
            SizedBox(height: defaultPadding *4),
      
            DrawerListTitle(
              svgSrc: 'assets/Logos/user-headset.svg',
              title: 'Support' ,
              press: () {},
            ),
      
            DrawerListTitle(
              svgSrc: 'assets/Logos/settings (1).svg',
              title: 'Setting' ,
              press: () {},
            ),
      
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Row(
                
                children: [
              SvgPicture.asset('assets/Logos/brightness.svg',width: 16,
              color: Colors.white,),
              
              SizedBox(width:20 ),

              Light_DarkSwitch()
                ]),
            ),
      
            SizedBox(height: defaultPadding),
             DrawerListTitle(
              svgSrc: 'assets/Logos/sign-out-alt.svg',
              title: 'Logout' ,
              press: () {},
            ),
        ],
      ),
    );
  }
}
