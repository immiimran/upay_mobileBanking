import 'package:flutter/material.dart';
import 'package:upay_mobile_banking/widgets/custom_home_action_button.dart';

class UpayPaymentSection extends StatelessWidget {
  const UpayPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
            icon: 'assets/images/image.png',
            label: "Send Money",
          ),
          CustomHomeActionButton(
            icon: 'assets/images/image.png',
            label: "Mobile Recharge",
          ),
          CustomHomeActionButton(
            icon: 'assets/images/image.png',
            label: "Cash Out",
          ),
          CustomHomeActionButton(
            icon: 'assets/images/image.png',
            label: "Make Payment",
          ),
          CustomHomeActionButton(
            icon: 'assets/images/logo.png',
            label: "Add Money",
          ),
          CustomHomeActionButton(icon: 'assets/images/logo.png', label: "Loan"),
          CustomHomeActionButton(
            icon: 'assets/images/logo.png',
            label: "Pay bill",
          ),
          CustomHomeActionButton(
            icon: 'assets/images/logo.png',
            label: "Savings",
          ),
          CustomHomeActionButton(
            icon: 'assets/images/image.png',
            label: "Add Money",
          ),
          CustomHomeActionButton(
            icon: 'assets/images/image.png',
            label: "Loan",
          ),
          CustomHomeActionButton(
            icon: 'assets/images/image.png',
            label: "Pay bill",
          ),
          CustomHomeActionButton(
            icon: 'assets/images/image.png',
            label: "Savings",
          ),
        ]),
      ),
    );
  }
}
