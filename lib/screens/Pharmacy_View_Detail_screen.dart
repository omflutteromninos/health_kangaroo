import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class PharmacyViewDetail extends StatefulWidget {
  const PharmacyViewDetail({Key? key}) : super(key: key);

  @override
  State<PharmacyViewDetail> createState() => _PharmacyViewDetailState();
}

class _PharmacyViewDetailState extends State<PharmacyViewDetail> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Order Details',
            style: Styles.largeText.copyWith(fontWeight: FontWeight.w400)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: SizedBox(
          height: size.height * 0.885,
          width: size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: size.height * 0.1,
                    width: size.width * 0.2,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('assets/images/book.jpg'),
                            fit: BoxFit.cover),
                        shape: BoxShape.circle,
                        border:
                            Border.all(color: Styles.primaryColor, width: 2)),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const Text('Vikas Kumar'),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text('+919876543210'),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        '₹ 1000',
                        style: TextStyle(color: Styles.primaryColor),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: size.width * 0.28,
                  ),
                  Column(
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/ok.png'),
                        foregroundImage: AssetImage('assets/images/ok.png'),
                      ),
                      Text(
                        'Delivered',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Styles.primaryColor),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.location_on,
                    size: 18,
                    color: Styles.primaryColor,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    'S.c.o-135,Sahibzada Ajit Singh Nagar,Sahibzada Ajit\nSingh Nagar, Punjab',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('Order ID :- 123123123123123123'),
              const SizedBox(
                height: 20,
              ),
              Card(
                child: ListTile(
                  leading: Image.asset(
                    'assets/images/teblet.png',
                    height: 40,
                    width: 40,
                  ),
                  title: const Text(
                    'Health Cart',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Row(
                    children: [
                      const Text(
                        'Price',
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        '₹ 800',
                        style: TextStyle(color: Styles.primaryColor),
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
