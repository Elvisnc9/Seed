
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use, unnecessary_const

 import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sprung/sprung.dart';

import '../constrainst.dart';

class Body extends StatefulWidget {
  const Body({
    super.key,
  });

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {

  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment : CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SizedBox(
           height: 250,
           width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset('assets/Images/banner_031956.png' ,
            fit: BoxFit.cover,
            ),
          ),
          ),
        ),
          
        SizedBox(height: 35),
    
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          
    
            InfoBox(
              subtitle: 'Total Assets',
              value: '\$5,432',
              svgsrc: 'assets/Logos/money-bills-simple.svg',
            ),
             InfoBox(
              subtitle: 'Total Deposit ',
              value: '\$4,150',
              svgsrc: 'assets/Logos/briefcase.svg',
            ),
             InfoBox(
              subtitle: 'APY',
              value: '+8.6%',
              svgsrc: 'assets/Logos/chart-simple.svg',
            ),
          ],
        ),
    
        SizedBox(height: 10),
    
     Text(
          'Portfiolo Performance',
          style: GoogleFonts.sora(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.grey[300],
          ),
        ),
          SizedBox(height: 20),

        SizedBox(
          height: 230,
          width: 800,
          child: LineChart(
            mainData(),
            
            
            
          
          ),
        )
      
    ],
    );
  }
   List<Color> gradientColors = [
    Color.fromARGB(236, 231, 12, 12),
    Color.fromARGB(255, 8, 58, 149) ];

    
  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: false,
        drawVerticalLine: false,
        horizontalInterval: 1,
        verticalInterval: 1,
        getDrawingHorizontalLine: (value) {
          return const FlLine(
            color: bgColor,
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return const FlLine(
            color:bgColor ,
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            interval: 1,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 1,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 25,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: false,
        border: Border.all(color: const Color(0xff37434d)),
      ),
      minX: 0,
      maxX: 22,
      minY: 0,
      maxY: 20,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 3),
            FlSpot(1, 5),
            FlSpot(2, 7),
            FlSpot(4.0, 6.4),
            FlSpot(5, 7.9),
            FlSpot(7.4, 8.8),
            FlSpot(7.7, 7.0),
            FlSpot(8.5, 10),
             FlSpot(11, 7.4),
              FlSpot(13, 10),
               FlSpot(15, 11.9),
               FlSpot(16, 13),
               FlSpot(17.1, 10),
               FlSpot(20, 17.1),
           
          ],
          isCurved: true,
          gradient: LinearGradient(
            colors: gradientColors,
          ),
          barWidth: 3,
          isStrokeCapRound: true,
          dotData: const FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: gradientColors
                  .map((color) => color.withOpacity(0.3))
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }

  LineChartData avgData() {
    return LineChartData(
      lineTouchData: const LineTouchData(enabled: false),
      gridData: FlGridData(
        show: true,
        drawHorizontalLine: true,
        verticalInterval: 1,
        horizontalInterval: 1,
        getDrawingVerticalLine: (value) {
          return const FlLine(
            color: Color(0xff37434d),
            strokeWidth: 1,
          );
        },
        getDrawingHorizontalLine: (value) {
          return const FlLine(
            color: Color(0xff37434d),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 0,
            getTitlesWidget: bottomTitleWidgets,
            interval: 1,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 10,
            interval: 1,
          ),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
      ),
      borderData: FlBorderData(
        show: true,
        border: Border.all(color: const Color(0xff37434d)),
      ),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 1.44),
            FlSpot(2, 1.44),
            FlSpot(4.9, 1.44),
            FlSpot(6.8, 1.44),
            FlSpot(8, 1.44),
            FlSpot(9.5, 1.44),
            FlSpot(1, 2),
            FlSpot(11, 3.44),
            FlSpot(5, 4.44),
           
          ],
          isCurved: true,
          gradient: LinearGradient(
            colors: [
              ColorTween(begin: gradientColors[2], end: gradientColors[1])
                  .lerp(0.2)!,
              ColorTween(begin: gradientColors[2], end: gradientColors[1])
                  .lerp(0.2)!,
            ],
          ),
          barWidth: 1,
          isStrokeCapRound: true,
          dotData: const FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: [
                ColorTween(begin: gradientColors[0], end: gradientColors[1])
                    .lerp(0.2)!
                    .withOpacity(0.1),
                ColorTween(begin: gradientColors[0], end: gradientColors[1])
                    .lerp(0.2)!
                    .withOpacity(0.1),
              ],
            ),
          ),
        ),
      ],
    );
  }
}


class InfoBox extends StatelessWidget {
  const InfoBox({
    super.key, required this.subtitle, required this.value, required this.svgsrc,
  });
 final String subtitle;
 final String value;
 final  String svgsrc;

  @override
  Widget build(BuildContext context) {
    return OnHoverBox(
     builder:  (bool isHovered) { 
          final color = isHovered? Color.fromRGBO(161, 237, 49, 1) : primaryColor;
          final colors = isHovered? Colors.black : Colors.white;
          final textweight = isHovered? FontWeight.bold : FontWeight.w700;
          
      return Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          
          Container(
            height: 100,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: color,
             ),
             child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  value,
                  style: GoogleFonts.sora(
                fontSize: 23,  
                fontWeight: textweight,
                color: colors,
                ),
                ),
                SizedBox(height: 10),
                Text(
                  subtitle,
                  style: TextStyle(
                    color: colors,
                    fontWeight: FontWeight.bold
                  ),
                ),
               
              ],
             ),
             
          ),
      
           Positioned(
            bottom: 85,
             child: CircleAvatar(
                  radius: 20,
                  backgroundColor: color,
                  child: SvgPicture.asset(svgsrc, width: 25, color: colors,),
                  ),
           ),
        ],
      );
     }
    );
  }
}

class OnHoverBox extends StatefulWidget {
  final   Widget Function (bool isHovered) builder;
  const OnHoverBox({super.key, required this.builder});

  @override
  State<OnHoverBox> createState() => _OnHoverBoxState();
}

class _OnHoverBoxState extends State<OnHoverBox> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    final hoverTransform = Matrix4.identity()..translate(4,-5,0)..scale(1.0);
    final transform = isHovered? hoverTransform : Matrix4.identity();
    return MouseRegion(
      cursor: SystemMouseCursors.click,
    onEnter: (event) => onEntered(true),
    onExit: (event) => onEntered(false),
    child:
     AnimatedContainer(
      duration: Duration(milliseconds: 200),
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

 
  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    
    const style = TextStyle(
      fontSize: 10,
      
    );
    Widget text;
    switch (value.toInt()) {
      case 2:
        text = const Text('1year', style: style);
        break;
      case 5:
        text = const Text('1month', style: style);
        break;
      case 8:
        text = const Text('1week', style: style);
        break;
        case 11:
        text = const Text('2day', style: style);
        break;
        case 14:
        text = const Text('1day', style: style);
        break;
        case 17:
        text = const Text('20mins', style: style);
        break;
        case 20:
        text = const Text('10mins', style: style);
        break;
      default:
        text = const Text('', style: style);
        break;
    }
    

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: text,
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontSize: 10,
    );
    String text;
    switch (value.toInt()) {
      case 5:
        text = '\$1k';
        break;
      case 8:
        text = '\$5k';
        break;
      case 11:
        text = '\$10k';
        break;
        case 14:
        text = '\$20k';
        break;
        case 17:
        text = '\$35k';
        break;
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.left);
  }
