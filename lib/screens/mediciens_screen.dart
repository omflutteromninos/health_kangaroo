import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
        .map((item) => SizedBox(
              width: 320,
              child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  child: Image.network(item, fit: BoxFit.fitWidth)),
            ))
        .toList();

    return Scaffold(
        appBar: AppBar(
          title: Text('Medicine'),
            centerTitle: true,
            backgroundColor: const Color.fromARGB(0, 255, 255, 255),
            foregroundColor: Colors.black,
            elevation: 0,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Icon(Icons.shopping_cart_outlined),
              )
            ]),
        body: Container(
          height: size.height,
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    height: size.height*0.885,
                    width: size.width*0.9,
                    child: Column(
                      children: [
                        const SizedBox(height: 10,),
                        Container(
                          height: 45,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  // spreadRadius: 5,
                                  blurRadius: 20,
                                  color: Colors.grey.shade300)
                            ],
                            color: Colors.white,
                            border: Border.all(
                                color: Colors.grey.shade300.withOpacity(0.7), width: 4),
                            borderRadius: BorderRadius.circular(22.5),
                          ),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.search,
                                color: Styles.greenColor,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Text(
                                'SEARCH MEDICINE',
                                style: Styles.graySmallText,
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 20,),
                        Container(
                          height: size.height*0.14,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(blurRadius: 10,color: Colors.grey)
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                right: 10, left: 18, top: 8, bottom: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Order Quickly with prescription',
                                  style: Styles.mediumText.copyWith(fontSize: 16,fontWeight: FontWeight.w700),
                                ),
                                const SizedBox(height: 4,),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'upload prescription and tell us what you\nneed.We do the rest!',
                                      style: Styles.graySmallText.copyWith(fontWeight: FontWeight.bold),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) {
                                          return const UploadScreen();
                                        }));
                                      },
                                      child: Container(
                                        height: size.height*0.04,
                                        width: size.width*0.2,
                                        decoration: BoxDecoration(
                                            color: Styles.greenColor,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Center(
                                            child: Text(
                                          'Upload',
                                          style: Styles.whiteText,
                                        )),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 6,),
                                Text(
                                  'Save 18% on medicines',
                                  style: Styles.smallText.copyWith(fontWeight: FontWeight.w500)
                                      .copyWith(color: Styles.greenColor),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Stack(
                          children: [
                            CarouselSlider(
                              items: imageSliders,
                              carouselController: _controller,
                              options: CarouselOptions(
                                  viewportFraction: 1,
                                  autoPlay: true,
                                  aspectRatio: 2.6,
                                  enlargeCenterPage: true,
                                  onPageChanged: (index, reason) {
                                    setState(() {
                                      _current = index;
                                    });
                                  }),
                            ),
                            Positioned(
                              bottom: 8,
                              right: size.width * 0.41,
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children:
                                      imgList.asMap().entries.map((entry) {
                                    return GestureDetector(
                                      onTap: () => _controller
                                          .animateToPage(entry.key),
                                      child: Container(
                                        width: 6.0,
                                        height: 6.0,
                                        margin: const EdgeInsets.symmetric(
                                            vertical: 8.0, horizontal: 4.0),
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color:_current == entry.key? Colors.green:Colors.white),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
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
                        const SizedBox(
                          height: 10,
                        ),
                        Expanded(
                          child: Container(
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
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ));
  }
}

// ignore: must_be_immutable
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
        const SizedBox(
          height: 5,
        ),
        Text(
          textName,
          style: const TextStyle(fontSize: 10),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
