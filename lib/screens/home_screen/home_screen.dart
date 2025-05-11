import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:upay_mobile_banking/screens/home_screen/upay_payment_section.dart';
import 'package:upay_mobile_banking/utils/colors.dart';
import 'package:upay_mobile_banking/widgets/custom_home_action_button.dart';
import 'package:upay_mobile_banking/widgets/slider_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        backgroundColor: pColor,
        title: ListTile(
          contentPadding: EdgeInsets.zero,
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              "https://play-lh.googleusercontent.com/cCVvEEwDQSPmDO8F-kryWhvzy53JllG1FGtHGDG-SDgfVTvvYSvWEXXDbgAY0hf7Bg=w480-h960-rw",
            ),
          ),
          title: Text("Imran Immi"),
          subtitle: Text(
            "01911754060",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          ),
          trailing: Container(
            width: 80,
            height: 30,
            decoration: BoxDecoration(
              color: sColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Text("Balance", style: TextStyle(color: Colors.white)),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            child: GridView.custom(
              shrinkWrap: true,
              primary: false,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
              ),
              childrenDelegate: SliverChildListDelegate([
                CustomHomeActionButton(
                  icon: 'assets/images/logo.png',
                  label: "Send Money",
                ),
                CustomHomeActionButton(
                  icon: 'assets/images/logo.png',
                  label: "Mobile Recharge",
                ),
                CustomHomeActionButton(
                  icon: 'assets/images/logo.png',
                  label: "Cash Out",
                ),
                CustomHomeActionButton(
                  icon: 'assets/images/logo.png',
                  label: "Make Payment",
                ),
                CustomHomeActionButton(
                  icon: 'assets/images/logo.png',
                  label: "Add Money",
                ),
                CustomHomeActionButton(
                  icon: 'assets/images/logo.png',
                  label: "Loan",
                ),
                CustomHomeActionButton(
                  icon: 'assets/images/logo.png',
                  label: "Pay bill",
                ),
                CustomHomeActionButton(
                  icon: 'assets/images/logo.png',
                  label: "Savings",
                ),
              ]),
            ),
          ),

          SliderSection(),
          SmoothIndicator(offset: 02, count: 4, size: Size(50, 50)),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Upay Payments",
                style: TextStyle(
                  fontSize: 20,
                  color: sColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          UpayPaymentSection(),
        ],
      ),
    );
  }
}
