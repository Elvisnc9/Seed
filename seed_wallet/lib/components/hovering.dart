
// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sprung/sprung.dart';

class DrawerListTitle extends StatelessWidget {
  const DrawerListTitle({
    super.key, required this.svgSrc, required this.title, required this.press,
  });

  final String svgSrc;
  final String title;
  final VoidCallback press;
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, ),
      child: OnHoverButton(
        builder:  (bool isHovered) { 
          final color = isHovered? Colors.black : Colors.white;
          final colors = isHovered? Colors.white : Colors.transparent;
          
          
        return  Padding(
          padding: const EdgeInsets.all(1),
          child: Container( 
            padding: EdgeInsets.all(1),
            decoration: BoxDecoration(
              
              color: colors,
              borderRadius: BorderRadius.circular(15)
            ),
            child: ListTile(
              
                onTap: press,
                  leading:SvgPicture.asset(svgSrc, width: 14, color:color,) ,
                  horizontalTitleGap: 4.0,
                  title: Text(title, style: TextStyle(fontSize: 11, color: color, fontWeight: FontWeight.bold),),
                ),
          ),
        );
        
        }
      ),
      
    );
    
  }
}

class OnHoverButton extends StatefulWidget {
  final   Widget Function (bool isHovered) builder;
  const OnHoverButton({super.key, required this.builder});

  @override
  State<OnHoverButton> createState() => _OnHoverButtonState();
}

class _OnHoverButtonState extends State<OnHoverButton> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    final hoverTransform = Matrix4.identity()..translate(-35,-2,0)..scale(1.1);
    final transform = isHovered? hoverTransform : Matrix4.identity();
    return MouseRegion(
      cursor: SystemMouseCursors.click,
    onEnter: (event) => onEntered(true),
    onExit: (event) => onEntered(false),
    child:
     AnimatedContainer(
      duration: Duration(milliseconds: 400),
      curve: Sprung.custom(
        damping: 40,
        stiffness: 90,
        mass: 1,
        velocity: 0.0
      ),
      transform: transform,
      child: widget.builder(isHovered))
     );
  }
  
  onEntered(bool isHovered) {setState(() {
    this.isHovered = isHovered;
  });}
}