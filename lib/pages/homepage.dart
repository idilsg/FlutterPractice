import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 40, left: 20, right: 20),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow( //arama kutucuğunun gölgesi
                  color: Color(0xff1D1617).withOpacity(0.11),
                  blurRadius: 40,
                  spreadRadius: 0.0,
                )
              ]
            ),
            child: TextField( //arama kısmı
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.all(15),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12),
                  child: SvgPicture.asset(
                    'assets/icons/search.svg',
                    width: 20,
                    height: 20,
                    colorFilter: ColorFilter.mode( //icon rengini açmak için
                      Colors.grey.shade600,
                      BlendMode.srcIn,),
                  ),
                ),
                suffixIcon: IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      VerticalDivider(
                        color: Colors.black,
                        indent: 10,
                        endIndent: 10,
                        thickness: 0.2,
                        width: 0.5,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: SvgPicture.asset(
                          'assets/icons/filters-2.svg',
                          colorFilter: ColorFilter.mode( //icon rengini açmak için
                            Colors.grey.shade600, 
                            BlendMode.srcIn)
                        ),
                      ),
                    ],
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none
                )
              ),
            ),
          )
        ],
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: Text(
        'Breakfast',
        style: TextStyle(
          color: Colors.black, 
          fontSize: 18, 
          fontWeight: FontWeight.bold
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0.0,
      centerTitle: true,

      leading: GestureDetector(
        onTap: (){
            
        },
        child:Container(
          margin: EdgeInsets.all(10), //container'in boyutu
          alignment: Alignment.center,
          child: SvgPicture.asset(
            'assets/icons/left-arrow.svg',
            height: 17,
            width: 17,
          ),
          decoration: BoxDecoration( //soldaki kutucuk
            color: Color(0xffF7F8F8),
            borderRadius: BorderRadius.circular(10) //köşeleri sivri olmasın diye
          ),
        ),
      ),

      actions: [
        GestureDetector(
          onTap: (){

          },
          child: Container(
            margin: EdgeInsets.all(10), //container'in boyutu
            alignment: Alignment.center,
            width: 37,
            child: SvgPicture.asset(
              'assets/icons/three-dots.svg',
              height: 12,
              width: 12,
            ),
            decoration: BoxDecoration( //soldaki kutucuk
              color: Color(0xffF7F8F8),
              borderRadius: BorderRadius.circular(10) //köşeleri sivri olmasın diye
            ),
          ), 
        )
      ],
    );
  }
}
