import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:foodly_app/screens/Home/widgets/widgets.dart';
import 'package:foodly_app/utils/color_constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  List foodTypeList = [
    Icons.local_pizza_outlined,
    Icons.local_pizza_outlined,
    Icons.local_pizza_outlined,
    Icons.local_pizza_outlined,
    Icons.local_pizza_outlined,
  ];
  String location = '23 Trường Thi 1, Thanh Khê, Đà Nẵng';
  @override
  Widget build(BuildContext context) {
    const imagesList = [
      'https://media.istockphoto.com/vectors/grocery-shopping-vector-id516790252',
      'https://media.istockphoto.com/id/1027150132/vi/vec-to/bi%E1%BB%83u-ng%E1%BB%AF-b%C3%A1n-h%C3%A0ng-m%C3%B9a-thu.webp?s=612x612&w=is&k=20&c=Mcwi-zGPZls1bAVy_f8ET44CQsPJxWYyHmJMf2Ld0Io=',
      'https://media.istockphoto.com/vectors/grocery-shopping-vector-id516793074'
    ];
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(kToolbarHeight),
              child: AppBarWidget(
                location: location,
              ),
            ),
            body: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    CarouselSlider(
                      items: imagesList.map((item) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Stack(
                              children: [
                                Container(
                                  width: double.infinity,
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 1),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(14),
                                    child: Image.network(
                                      item,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  right: 10,
                                  bottom: 10,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 6, vertical: 2),
                                    decoration: BoxDecoration(
                                        color: Colors.grey.withOpacity(0.5),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Text(
                                      '${_currentIndex + 1}/${imagesList.length}',
                                      style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                )
                              ],
                            );
                          },
                        );
                      }).toList(),
                      options: CarouselOptions(
                          height: MediaQuery.of(context).size.height * .18,
                          viewportFraction: 1,
                          autoPlay: true,
                          onPageChanged: (index, reason) {
                            _currentIndex = index;
                            // print('Get Index' + index.toString());
                            setState(() {});
                          }),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const SearchHomeWidget(),
                    const SizedBox(
                      height: 30,
                    ),
                    HeaderCategory(title: 'Categories', onTap: (){}),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 90,
                      child: ListView.builder(
                        itemCount: foodTypeList.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: TypeFoodCard(
                              nameFood: "Burger",
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    HeaderCategory(
                      title: 'Top Restaurants',
                      onTap: (){}
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 14),
                            child: RestaurantCard(),
                          );
                        },
                      )
                    )
                  ],
                ),
              ),
            )));
  }

  HeaderCategory({title, onTap}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            "View All",
            style: TextStyle(
                fontSize: 12, color: textColor, fontWeight: FontWeight.w500),
          ),
        )
      ],
    );
  }
}

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: btnGrey,
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(2,2)
          )
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          height: 200,
          width: MediaQuery.of(context).size.width * 0.8,
          color: Colors.red,
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Stack(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Image.network(
                        "https://cdn.tgdd.vn/2021/04/CookProduct/1200-1200x676-87.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      right: 10,
                      top: 10,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          color: Colors.white,
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          child: Column(
                            children: [
                              Text(
                                "4.9",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700
                                ),
                              ),
                              Icon(
                                Icons.star_purple500_sharp, 
                                color: Colors.yellow,
                                size: 14,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.6),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                          )
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.car_crash_outlined,
                              size: 16,
                              color: blackColor,
                            ),
                            SizedBox(width: 4,),
                            Text(
                              '25 - 30 min',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: blackColor
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Cafe Rabin \n",
                              style: TextStyle(
                                color: blackColor,
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                              )
                            ),
                            TextSpan(
                              text: "Chines, Italian",
                              style: TextStyle(
                                color: blackColor,
                                fontSize: 10,
                                fontWeight: FontWeight.w300,
                                height: 2
                              )
                            )
                          ]
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.price_change_outlined,
                            size: 14,
                          ),
                          Text(
                            r'$35 - $65',
                            style: TextStyle(
                                color: blackColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              )
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
