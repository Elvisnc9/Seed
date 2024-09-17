// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, non_constant_identifier_names

import 'dart:developer';

import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constrainst.dart';

class Transactions extends StatefulWidget {
  const Transactions({
    super.key,
  });

  @override
  State<Transactions> createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {

  List<String> items =[
   "Buy",

   "Sell",
   
  ]; 

 

  int current = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: 15, vertical: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: primaryColor),
        child: Column(
             // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height:45, width: double.infinity,
            child: ListView.builder(
              itemCount: items.length,
               scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, index){
             
              return GestureDetector(
              
                
                onTap: (){
                  setState(() {
                    current = index;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: AnimatedContainer(
                  width: 110,
                  height: 0,
                  
                    padding: EdgeInsets.symmetric(horizontal: 5,vertical: 12 ),
                  
                    duration: Duration(milliseconds: 500),
                    decoration: BoxDecoration(
                      color: current == index? Colors.white : bgColor,
                      borderRadius: BorderRadius.circular(18)
                    ),
                    child: Center(
                      child: Text(
                        items[index],
                        style:  TextStyle(
                        fontWeight: FontWeight.bold,
                          fontSize: 12,
                      color: current == index? Colors.black : Colors.white
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }),
            ),
              
          SizedBox(height: 6),
          Data(),
          
          ],
        ),
      ),
    );
  }
}


 




 class Data extends StatefulWidget {
  const Data({super.key});
 @override
  State<Data> createState() => _DataState();
}

class _DataState extends State<Data> {


  final List<String> _items = [
    "Bitcoin",
    "Ethereum",
    "Solana",
    "BNB",
  ];
   String? selectedItem = "Bitcoin";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [


      Text(
        'Coins',
      ),

      SizedBox(
        height: 5),
        
       SizedBox(
        width: 270,
         child: DropdownButtonFormField<String> ( 
          
          dropdownColor: bgColor,
        
          decoration: InputDecoration(

            enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: bgColor),
              borderRadius: BorderRadius.circular(12),
            
          )

          ),
        
          value: selectedItem,
          items:_items 
          .map((item) => DropdownMenuItem<String>(
            value: item,
            child: Text(item, style: TextStyle(fontSize: 12),)
            ))
            .toList(),
            onChanged: (item) => setState(() => selectedItem = item),
          ),
       ),

        SizedBox(
        height: 8),
       Text(
        'Amount',
      ),

       SizedBox(
        height: 2),
      TextFormField(
        
        decoration: InputDecoration(
          fillColor: Colors.black,
        
          labelText: '\$',
          hintStyle: TextStyle(fontWeight: FontWeight.bold),
          enabledBorder: OutlineInputBorder(
             borderSide: BorderSide(width: 2, color: bgColor),
            borderRadius: BorderRadius.circular(12)
          )
        ),
      
      ),

      SizedBox(
        height: 10),

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Total'
          ),

          Text(
            '\$ ___',
          ),
        ],
      ),

      SizedBox(height: 11),

       Padding(
         padding: const EdgeInsets.symmetric(horizontal: 20, ),
         child: FloatingActionButton.extended(
          backgroundColor: Colors.white,
          onPressed: (){},
          extendedPadding: EdgeInsets.symmetric(horizontal: 80),
          label: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/Images/ethereum.png', width: 18,),
                        
                        
                            Text(
                              'Buy Ethereum',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 11,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),)
       )
      
     
      ],
    );
  }
}

