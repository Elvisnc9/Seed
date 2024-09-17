// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constrainst.dart';

class Profile extends StatelessWidget {
  const Profile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: 15, vertical: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: primaryColor),
      child: Column(
        children: [
          
           CircleAvatar(
            radius: 55,
            backgroundImage: AssetImage('assets/Images/boy.jpg')),
          
          SizedBox(height: 10),
          Text(
            'Total Balance',
            style: TextStyle(
              fontSize: 14,
            ),
          ),
           
          SizedBox(height: 8),
          Text(
            '\$15,453.05',
        
            style: GoogleFonts.sora(
                fontSize: 23,  
                fontWeight: FontWeight.bold,
                color: Colors.white,
                ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                 padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(12),
                      color: Color.fromRGBO(161, 237, 49, 1)),
            
                    child: Text(
                      '+12.34%',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                ),
                SizedBox(width: 15),
                CircleAvatar(
                  radius:15 ,
                  backgroundColor: Color.fromRGBO(161, 237, 49, 1),
                  child:SvgPicture.asset('assets/Logos/arrow-up-right.svg', width: 12, color: Colors.black,)),
                    
              ],
            ),
          ),
        ],
      ),
    );
  }
}
