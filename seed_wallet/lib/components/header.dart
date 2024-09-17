// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:seed_wallet/constrainst.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Welcome Back, ',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(fontSize: 20),
              ),
              Text(
                ' Sally!',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Spacer(
                flex: 7,
              ),
              Expanded(
                  flex: 4,
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: primaryColor,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        suffixIcon: Icon(Icons.search),
                        hintText: 'Search'),
                  )),
              Expanded(
                flex: 2,
                child: SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/Logos/bell.svg', width: 18, color: Colors.white,),
                     SizedBox(width: 15,),
                      CircleAvatar(
                          radius: 20,
                    backgroundImage: AssetImage('assets/Images/boy.jpg')),
                    SizedBox(width: 12,),
                      SvgPicture.asset('assets/Logos/menu-dots-vertical.svg', width: 18, color: Colors.white,),

                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
