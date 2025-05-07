import 'package:flutter/material.dart';
import 'package:upay_mobile_banking/utils/colors.dart';

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
            style: TextStyle(
              fontSize: 12,
              color: Colors.black.withOpacity(.5),
              fontWeight: FontWeight.w500,
            ),
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
          GridView.custom(
            shrinkWrap: true,
            primary: false,
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
            ),
            childrenDelegate: SliverChildListDelegate([Column(children: [])]),
          ),
        ],
      ),
    );
  }
}
