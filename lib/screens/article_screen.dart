import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hk/screens/health_article_sleep.dart';

import '../utils/app_styles.dart';

class ArticleScreen extends StatefulWidget {
  const ArticleScreen({Key? key}) : super(key: key);

  @override
  State<ArticleScreen> createState() => _ArticleScreenState();
}

class _ArticleScreenState extends State<ArticleScreen> {
  bool isselected1 = true;
  bool isselected2 = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        title: const Text('Articles'),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          width: size.width,
          child: Column(
            children: [
              Gap(MediaQuery.of(context).size.height * 0.035),
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 10, bottom: 20),
                child: SizedBox(
                  // color: Colors.white,
                  width: size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                          border: Border.all(color: Styles.greenColor),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isselected1 = true;
                                  isselected2 = false;
                                });
                              },
                              child: Container(
                                height: 50,
                                width: MediaQuery.of(context).size.width * 0.45,
                                decoration: BoxDecoration(
                                    color: isselected1
                                        ? Styles.greenColor
                                        : Colors.white,
                                    borderRadius: const BorderRadius.horizontal(
                                        left: Radius.circular(30))),
                                child: Center(
                                  child: Text(
                                    'FEED',
                                    style: Styles.mediumText.copyWith(
                                        fontWeight: FontWeight.normal,
                                        color: isselected2
                                            ? Colors.black
                                            : Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            // const SizedBox(
                            //   width: 5,
                            // ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isselected2 = true;
                                  isselected1 = false;
                                });
                              },
                              child: Container(
                                height: 50,
                                width:
                                    MediaQuery.of(context).size.width * 0.444,
                                decoration: BoxDecoration(
                                    color: isselected2
                                        ? Styles.greenColor
                                        : Colors.white,
                                    borderRadius: const BorderRadius.horizontal(
                                        right: Radius.circular(30))),
                                child: Center(
                                  child: Text(
                                    'EXPLORE',
                                    style: Styles.mediumText.copyWith(
                                        fontWeight: FontWeight.normal,
                                        color: isselected1
                                            ? Colors.black
                                            : Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                        width: size.width,
                        height: size.height * 0.75,
                        child: ListView.builder(
                            itemCount: 2,
                            itemBuilder: (context, int index) {
                              if (isselected1 == true) {
                                return InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const HealthArticleSleep(),
                                        ));
                                  },
                                  child: Card(
                                    child: Container(
                                      color: Colors.white,
                                      width: size.width,
                                      // height: size.height * .35,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Container(
                                              height: size.height * .22,
                                              decoration: const BoxDecoration(
                                                  image: DecorationImage(
                                                      image: NetworkImage(
                                                          'https://images.unsplash.com/photo-1585241936939-be4099591252?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
                                                      fit: BoxFit.fill)),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(6.0),
                                            child: Text(
                                              'Health Article',
                                              style: Styles.smallText,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'How do doctors survives with this pandemic',
                                              style: Styles.graySmallText,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              } else if (isselected2 == true) {
                                return InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const HealthArticleSleep(),
                                        ));
                                  },
                                  child: SizedBox(
                                    width: size.width,
                                    height: size.height * .28,
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Container(
                                                height: 200,
                                                width: 150,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    image: const DecorationImage(
                                                        image: AssetImage(
                                                            'assets/images/img1.jpg'),
                                                        fit: BoxFit.fill)),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Container(
                                                height: 200,
                                                width: 150,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    image: const DecorationImage(
                                                        image: AssetImage(
                                                            'assets/images/img1.jpg'),
                                                        fit: BoxFit.fill)),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              } else {
                                return const Text('data');
                              }
                            }),
                      ),
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
