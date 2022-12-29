import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class EmergencyContactsScreen extends StatefulWidget {
  const EmergencyContactsScreen({super.key});

  @override
  State<EmergencyContactsScreen> createState() =>
      _EmergencyContactsScreenState();
}

class _EmergencyContactsScreenState extends State<EmergencyContactsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Styles.bgColor,
        foregroundColor: Colors.black,
        title: const Text('Emergency Contacts'),
      ),
      body: Container(
          child: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                title: const Text('deepak'),
                trailing: SizedBox(
                  width: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 14,
                        foregroundColor: Colors.white,
                        backgroundColor: Styles.greenColor,
                        child: const Icon(
                          Icons.edit,
                          size: 18,
                        ),
                      ),
                      CircleAvatar(
                        radius: 14,
                        foregroundColor: Colors.white,
                        backgroundColor: Styles.greenColor,
                        child: const Icon(
                          Icons.delete,
                          size: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(
                height: 0,
                thickness: 1,
                color: Colors.black38,
              )
            ],
          );
        },
      )),
    );
  }
}
