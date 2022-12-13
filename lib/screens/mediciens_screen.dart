import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/src/rendering/box.dart';

import '../utils/app_styles.dart';
import 'lab_test_upload_screen.dart';

class MedicineScreen extends StatefulWidget {
  const MedicineScreen({Key? key}) : super(key: key);

  @override
  State<MedicineScreen> createState() => _MedicineScreenState();
}

class _MedicineScreenState extends State<MedicineScreen> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  final List<String> imgList = [
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final List<Widget> imageSliders = imgList
        .map((item) => Container(
              width: 320,
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  child: Image.network(item, fit: BoxFit.fitWidth)),
            ))
        .toList();

    return Scaffold(
        appBar: AppBar(
            backgroundColor: Color.fromARGB(0, 255, 255, 255),
            foregroundColor: Colors.black,
            elevation: 0,
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Medicine',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 20),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              right: 20,
                            ),
                            child: Icon(Icons.shopping_cart_outlined),
                          ),
                        ]),
                  ),
                ],
              ),
            ]),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Container(
                    padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                    height: size.height,
                    width: size.width,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.search,
                                color: Styles.greenColor,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'SEARCH MEDICINE',
                                style: Styles.graySmallText,
                              )
                            ],
                          ),
                          height: 45,
                          width: 300,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 5,
                                  blurRadius: 5,
                                  color: Colors.grey.shade200)
                            ],
                            color: Colors.white,
                            border: Border.all(
                                color: Colors.grey.shade300, width: 4),
                            borderRadius: BorderRadius.circular(22.5),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            height: 110,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  right: 20, left: 20, top: 8, bottom: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Order Quickly with prescription',
                                    style: Styles.mediumText,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'upload prescription and tell us',
                                            style: Styles.graySmallText,
                                          ),
                                          Text(
                                            'what you need.We do the rest!',
                                            style: Styles.graySmallText,
                                          ),
                                        ],
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) {
                                            return UploadScreen();
                                          }));
                                        },
                                        child: Container(
                                          child: Center(
                                              child: Text(
                                            'Upload',
                                            style: Styles.whiteText,
                                          )),
                                          height: 40,
                                          width: 90,
                                          decoration: BoxDecoration(
                                              color: Styles.greenColor,
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                        ),
                                      )
                                    ],
                                  ),
                                  Text(
                                    'Save 18% on medicines',
                                    style: Styles.smallText
                                        .copyWith(color: Styles.greenColor),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(children: [
                          Stack(
                            children: [
                              CarouselSlider(
                                items: imageSliders,
                                carouselController: _controller,
                                options: CarouselOptions(
                                    viewportFraction: 1,
                                    height: 150,
                                    autoPlay: true,
                                    aspectRatio: 4.0,
                                    enlargeCenterPage: true,
                                    onPageChanged: (index, reason) {
                                      setState(() {
                                        _current = index;
                                      });
                                    }),
                              ),
                              Positioned(
                                bottom: 10,
                                right: size.width * 0.35,
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children:
                                        imgList.asMap().entries.map((entry) {
                                      return GestureDetector(
                                        onTap: () => _controller
                                            .animateToPage(entry.key),
                                        child: Container(
                                          width: 12.0,
                                          height: 12.0,
                                          margin: EdgeInsets.symmetric(
                                              vertical: 8.0, horizontal: 4.0),
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: (Theme.of(context)
                                                              .brightness ==
                                                          Brightness.dark
                                                      ? Colors.white
                                                      : Colors.black)
                                                  .withOpacity(
                                                      _current == entry.key
                                                          ? 0.9
                                                          : 0.4)),
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ]),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Popular Categories',
                              style: Styles.mediumText,
                            ),
                            Text(
                              'See All',
                              style: Styles.smallText,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: size.height * 0.26,
                          child: GridView.count(
                            childAspectRatio: 0.9,
                            primary: false,
                            crossAxisCount: 4,
                            children: <Widget>[
                              PopularCategories(
                                  imagePath: 'assets/images/img2.jpg',
                                  textName: 'Vitamins & \n Suppliments'),
                              PopularCategories(
                                  imagePath: 'assets/images/img1.jpg',
                                  textName: 'Stress & \n Anxiety'),
                              PopularCategories(
                                  imagePath: 'assets/images/img3.jpg',
                                  textName: 'Bones & \n Joints'),
                              PopularCategories(
                                  imagePath: 'assets/images/img1.jpg',
                                  textName: 'Diabetes'),
                              PopularCategories(
                                  imagePath: 'assets/images/img1.jpg',
                                  textName: 'Stomach & \n Pains'),
                              PopularCategories(
                                  imagePath: 'assets/images/img2.jpg',
                                  textName: 'Pimples & \n Ance'),
                              PopularCategories(
                                  imagePath: 'assets/images/img2.jpg',
                                  textName: 'Hair & \n Scalp'),
                              PopularCategories(
                                  imagePath: 'assets/images/img2.jpg',
                                  textName: 'Sexual \n Disorder'),
                              PopularCategories(
                                  imagePath: 'assets/images/img2.jpg',
                                  textName: 'Suppliments'),
                            ],
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ));
  }
}

class PopularCategories extends StatelessWidget {
  PopularCategories({Key? key, required this.imagePath, required this.textName})
      : super(key: key);
  String imagePath;
  String textName;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage(imagePath),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          textName,
          style: TextStyle(fontSize: 10),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
