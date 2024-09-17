// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';

import '../constrainst.dart';

class Light_DarkSwitch extends StatefulWidget {
  const Light_DarkSwitch({
    super.key,
  });

  @override
  State<Light_DarkSwitch> createState() => _Light_DarkSwitchState();
}

class _Light_DarkSwitchState extends State<Light_DarkSwitch> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Switch(value: isSwitched, onChanged: (value){
      setState(() {
        isSwitched = value;
        
        
      });
      
    },
    activeColor:  Color.fromRGBO(66, 68, 143, 1),
    hoverColor: secondaryColor,
    splashRadius: 10,
    );
  }
}