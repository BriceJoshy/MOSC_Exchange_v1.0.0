import 'package:flutter/material.dart';
import 'package:hospital_app/billing_page/billing_call_pages/J3_billing.dart';
import 'package:hospital_app/billing_page/billing_call_pages/insurance_billing.dart';
import 'package:hospital_app/billing_page/billing_call_pages/megnu_billing.dart';
import 'package:hospital_app/billing_page/billing_call_pages/nacu_billing.dart';
import 'package:hospital_app/billing_page/billing_call_pages/security_office.dart';
import 'package:hospital_app/billing_page/billing_call_pages/uro_cash_billing.dart';
import 'package:hospital_app/canteen_page/cash_counter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../app_theme/theme.dart';
import '../widgets/my_list_tile.dart';

class billing extends StatefulWidget {
  const billing({super.key});

  @override
  State<billing> createState() => _billingState();
}

class _billingState extends State<billing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset(
            "assets/images/left.png",
            height: 35,
            width: 35,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.black, // <-- SEE HERE
        ),
        title: Text(
          'BILLING',
          style: TextStyle(
              color: Color.fromARGB(255, 17, 17, 17),
              fontFamily: "Kanit",
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(color: Color5),
          ListView(
            padding: EdgeInsets.all(15),
            children: [
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'MEGNU Billing',
                  color: Color2,
                  pagename: megnu_billing()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'J3 Billing', color: Color3, pagename: j3_billing()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Insurance Billing',
                  color: Color4,
                  pagename: insurance_billing()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'URO Cash Billing',
                  color: Color2,
                  pagename: uro_cash_billing()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'NACU Billing',
                  color: Color3,
                  pagename: nacu_billing()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Canteen', color: Color4, pagename: cash_counter()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'May I Help You',
                  color: Color2,
                  pagename: nacu_billing()),
              const SizedBox(
                height: 10,
              ),
              my_list_tile(
                  title: 'Security Office',
                  color: Color3,
                  pagename: security_office_billing()),
            ],
          ),
        ],
      ),
    );
  }
}
