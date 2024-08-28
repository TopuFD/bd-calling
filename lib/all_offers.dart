
import 'package:flutter/material.dart';
import 'package:myfirst_app/widget/custom_card.dart';

class PopulerDeals extends StatelessWidget {
  const PopulerDeals({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        shadowColor: Colors.white,
        scrolledUnderElevation: 5,
        title: const Text(
          "All Offers",
          style:  TextStyle(fontSize: 22, color: Colors.black),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: size.width * .03),
        width: size.width,
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 2.0,
              mainAxisSpacing: 20,
              childAspectRatio: 0.55,
            ),
            itemBuilder: (context, index) {
              return const CustomCard(
                  title: 'Premium Awards',
                  desce: "Youtube premium\nad-free vedios",
                  price: "999");
            }),
      ),
    );
  }
}
