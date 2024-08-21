import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yt_demo/models/category_model.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CategoryModel> categories = [];

  void _getCategories() {
   categories = CategoryModel.getCategories();
  }

  @override
  void initState() {
    _getCategories();
  }
  

  @override
  Widget build(BuildContext context) {
    _getCategories();
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start, //Category yazısı satır başında olsun diye
        children: [
          _searchField(),
          SizedBox(height: 40,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20), //solda biraz boşluk kalması için
                child: Text(
                  'Category',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600
                  )
                ),
              ),
              SizedBox(height: 15,), //Category'nin altında boşluk kalması için
              Container(
                height: 120,
                child: ListView.separated(
                  itemCount: categories.length,
                  scrollDirection: Axis.horizontal, //bunu yapmazsan renkler yatay sıralanır
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20
                  ),
                  separatorBuilder: (context, index) => SizedBox(width: 25,),
                  itemBuilder: (context, index) {
                    return Container(
                      width: 100,
                      decoration: BoxDecoration(
                        color: categories[index].boxColor.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(16)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly, //yazı ve yuvarlak eşit aralıklı dursun diye
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(9.0),
                              child: SvgPicture.asset(categories[index].iconPath),
                            )
                          ),
                          Text(
                            categories[index].name,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              fontSize: 13
                            ) 
                          )
                        ],
                      )
                    );
                  }
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container _searchField() {
    return Container(
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
              hintText: 'Search Pancake',
              hintStyle: TextStyle(
                color: Color(0xffDDDADA),
                fontSize: 14
              ),
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
              suffixIcon: Container(
                width: 100,
                child: IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      VerticalDivider(
                        color: Colors.black,
                        indent: 10, //yukarıdan boşluk bırakmak için
                        endIndent: 10, //aşağıdan boşluk bırakmak için
                        thickness: 0.2, //kalınlığı
                        width: 0.5, //sağa biraz daha yaklaşması için (opsiyonel)
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
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none
              )
            ),
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
