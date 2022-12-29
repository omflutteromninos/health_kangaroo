import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hk/screens/add_account.dart';
import 'package:hk/screens/home_page.dart';
import 'package:hk/screens/settings_screen.dart';
import 'package:hk/utils/app_styles.dart';

import 'article_screen.dart';
import 'health_locker_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  bool index2 = false;
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const ArticleScreen(),
    const InkWell(),
    const HealthLockerScreen(),
    const SettingScreen(),
  ];
  void _onItemTapped(int index) {
    if (index != 2) {
      setState(() {
        index2 = false;
        _selectedIndex = index;
      });
    } else {
      setState(() {
        index2 = true;
      });

      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
                actionsPadding: EdgeInsets.zero,
                titleTextStyle:
                    const TextStyle(color: Colors.white, fontSize: 22),
                backgroundColor: Colors.transparent,
                alignment: Alignment.topCenter,
                insetPadding: EdgeInsets.only(
                    left: 30,
                    right: 30,
                    top: MediaQuery.of(context).size.height * 0.5),
                actions: [
                  Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      width: MediaQuery.of(context).size.width,
                      height: 260,
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Added 1 Members',
                                style: GoogleFonts.poppins(
                                    color: Styles.greenColor,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return const AddAccountScreen();
                                  }));
                                },
                                child: Column(
                                  children: [
                                    const Icon(
                                      Icons.add_circle_outline,
                                      size: 35,
                                    ),
                                    const Gap(5),
                                    Text(
                                      'Add family member',
                                      style: GoogleFonts.dmSans(
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          const Divider(
                            thickness: 1,
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                width: 90,
                                height: 50,
                                child: Column(
                                  children: const [
                                    Image(
                                      image: AssetImage('assets/icons/21.png'),
                                      height: 25,
                                    ),
                                    Gap(2),
                                    Text(
                                      'My Account',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 90,
                                height: 50,
                                child: Column(
                                  children: const [
                                    Image(
                                      image: AssetImage('assets/icons/23.png'),
                                      height: 25,
                                    ),
                                    Gap(2),
                                    Text(
                                      'Wallet',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 90,
                                height: 50,
                                child: Column(
                                  children: const [
                                    Image(
                                      image: AssetImage('assets/icons/22.png'),
                                      height: 25,
                                    ),
                                    Gap(2),
                                    Text(
                                      'Subscription',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const Gap(40),
                        ],
                      ))
                ]);
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                index2 = true;
              });
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                        actionsPadding: EdgeInsets.zero,
                        titleTextStyle:
                            const TextStyle(color: Colors.white, fontSize: 22),
                        backgroundColor: Colors.transparent,
                        alignment: Alignment.topCenter,
                        insetPadding: EdgeInsets.only(
                            left: 30,
                            right: 30,
                            top: MediaQuery.of(context).size.height * 0.63),
                        actions: [
                          Container(
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50)),
                              width: MediaQuery.of(context).size.width,
                              alignment: Alignment.center,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        'Added 1 Members',
                                        style: GoogleFonts.poppins(
                                            color: Styles.greenColor,
                                            fontWeight: FontWeight.bold,
                                            decoration:
                                                TextDecoration.underline),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: (context) {
                                            return const AddAccountScreen();
                                          }));
                                        },
                                        child: Column(
                                          children: [
                                            const Icon(
                                              Icons.add_circle_outline,
                                              size: 35,
                                            ),
                                            const Gap(5),
                                            Text(
                                              'Add family member',
                                              style: GoogleFonts.dmSans(
                                                  fontWeight: FontWeight.w500),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  const Divider(
                                    thickness: 0.6,
                                    height: 20,
                                    color: Colors.black,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        width: 90,
                                        height: 50,
                                        child: Column(
                                          children: const [
                                            Image(
                                              image: AssetImage(
                                                  'assets/icons/21.png'),
                                              height: 25,
                                            ),
                                            Gap(2),
                                            Text(
                                              'My Account',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        width: 90,
                                        height: 50,
                                        child: Column(
                                          children: const [
                                            Image(
                                              image: AssetImage(
                                                  'assets/icons/23.png'),
                                              height: 25,
                                            ),
                                            Gap(2),
                                            Text(
                                              'Wallet',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        width: 90,
                                        height: 50,
                                        child: Column(
                                          children: const [
                                            Image(
                                              image: AssetImage(
                                                  'assets/icons/22.png'),
                                              height: 25,
                                            ),
                                            Gap(2),
                                            Text(
                                              'Subscription',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ))
                        ]);
                  });
            },
            isExtended: true,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.person,
              color: Styles.greenColor,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'Profile',
            style: TextStyle(color: index2 ? Colors.green : Colors.white),
          ),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
      backgroundColor: Styles.bgColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          elevation: 10,
          items: <BottomNavigationBarItem>[
            const BottomNavigationBarItem(
              icon: Image(
                color: Colors.white,
                image: AssetImage('assets/icons/14.png'),
                height: 26,
              ),
              activeIcon: Image(
                image: AssetImage('assets/icons/14.png'),
                height: 26,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: const Image(
                  image: AssetImage('assets/icons/15.png'),
                  height: 26,
                ),
                activeIcon: Image(
                  color: Styles.greenColor,
                  image: const AssetImage('assets/icons/15.png'),
                  height: 26,
                ),
                label: 'Article'),
            const BottomNavigationBarItem(
                icon: Image(
                  color: Colors.transparent,
                  image: AssetImage('assets/icons/21.png'),
                  height: 26,
                ),
                activeIcon: Image(
                  image: AssetImage('assets/icons/21.png'),
                  height: 26,
                  color: Colors.transparent,
                ),
                label: ''),
            BottomNavigationBarItem(
              icon: const Image(
                image: AssetImage('assets/icons/16.png'),
                height: 26,
              ),
              activeIcon: Image(
                color: Styles.greenColor,
                image: const AssetImage('assets/icons/16.png'),
                height: 26,
              ),
              label: 'Health Locker',
            ),
            const BottomNavigationBarItem(
                icon: Image(
                  color: Colors.white,
                  image: AssetImage('assets/icons/26.png'),
                  height: 26,
                ),
                activeIcon: Image(
                  image: AssetImage('assets/icons/26.png'),
                  height: 26,
                ),
                label: 'Settings'),
          ],
          showSelectedLabels: true,
          showUnselectedLabels: true,
          backgroundColor: Colors.black,
          selectedItemColor: Styles.greenColor,
          unselectedItemColor: Colors.grey,
          selectedLabelStyle:
              const TextStyle(color: Colors.white, fontSize: 12),
          unselectedLabelStyle:
              const TextStyle(color: Colors.white, fontSize: 12),
        ),
      ),
    );
  }
}
