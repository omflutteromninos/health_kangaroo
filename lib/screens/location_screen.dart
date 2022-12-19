import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hk/screens/hostpital_screen.dart';
import 'package:hk/utils/app_styles.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HospitalScreen(),
                  ));
            },
            child: Icon(Icons.adaptive.arrow_back)),
        centerTitle: true,
        elevation: 0,
        foregroundColor: Colors.black,
        backgroundColor: Styles.bgColor,
        title: const Text('Location'),
      ),
      body: Container(
          padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Styles.bgColor,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                height: 50,
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromARGB(61, 0, 0, 0), blurRadius: 6)
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: const TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search_rounded),
                        border:
                            OutlineInputBorder(borderSide: BorderSide.none))),
              ),
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.my_location,
                    size: 25,
                  ),
                  Gap(10),
                  Text(
                    'Use Current Location',
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
              const Gap(20),
              Container(
                height: 120,
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromARGB(61, 0, 0, 0), blurRadius: 6)
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: const TextField(
                    decoration: InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        label: Text(
                          'Address',
                          style: TextStyle(color: Colors.black38),
                        ),
                        border:
                            OutlineInputBorder(borderSide: BorderSide.none))),
              ),
              const Gap(20),
              Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Styles.greenColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                    'SET LOCATION',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  )),
            ],
          )),
    );
  }
}
