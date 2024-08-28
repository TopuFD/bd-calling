import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard(
      {super.key,
      required this.title,
      required this.desce,
      required this.price});

  final String title;
  final String desce;
  final String price;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height / 2,
      width: size.width / 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: size.height / 5,
                width: size.width / 2.2,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(63, 205, 198, 198),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Image.asset("assets/youtube.png")),
              ),
              Positioned(
                  right: 0,
                  bottom: 0,
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_border,
                        color: Colors.orange,
                      )))
            ],
          ),
          SizedBox(
            height: size.height * .02,
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                title,
                style: const TextStyle(fontSize: 20, color: Colors.black),
              )),
          SizedBox(
            height: size.height * .005,
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                desce,
                style: const TextStyle(fontSize: 16, color: Colors.grey),
              )),
          SizedBox(
            height: size.height * .02,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 246, 242, 212),
                  borderRadius: BorderRadius.circular(30)),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * .05, vertical: size.height * .01),
                child: Text(
                  price,
                  style: const TextStyle(fontSize: 16, color: Colors.brown),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
