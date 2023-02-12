import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'widgets/user_info_form.dart';

class ReservationPage extends StatefulWidget {
  const ReservationPage({super.key});

  @override
  State<ReservationPage> createState() => _ReservationPageState();
}

class _ReservationPageState extends State<ReservationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomNavBar(isDark: true,),
      body: Row(
        children: [
           Flexible(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.only(right: 64.0, left: 64, top: 48),
              child: UserInfoFormWidget(),
            ),
          ),
          Flexible(
            flex: 6,
            child: Container(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
