import 'package:flutter/material.dart';
import 'package:myfirst_app/all_offers.dart';
import 'package:myfirst_app/widget/custom_card.dart';
import 'package:myfirst_app/widget/custom_listtile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(size.width, size.height * .12),
        child: AppBar(
          surfaceTintColor: Colors.white,
          shadowColor: Colors.white,
          scrolledUnderElevation: 5,
          centerTitle: true,
          title: const Text(
            "Premium",
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
          leading: const Icon(
            Icons.home,
            color: Colors.red,
            size: 30,
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.settings,
                  size: 30,
                ))
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * .05),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "👋 Hello, Tijana",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: size.height * .01,
              ),
              Container(
                height: size.height / 10,
                width: size.width,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 246, 242, 212),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: EdgeInsets.only(left: size.width * .05),
                  child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "👊 0",
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.bold),
                      )),
                ),
              ),
              SizedBox(
                height: size.height * .05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Popular Deals",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const PopulerDeals()));
                    },
                    child: const Text(
                      "See All",
                      style: TextStyle(fontSize: 20, color: Colors.blue),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * .04,
              ),
              // popular offers start here =================================>
              SizedBox(
                height: size.height / 2.5,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 100,
                    itemBuilder: (context, index) {
                      return const CustomCard(
                          title: 'Premium Awards',
                          desce: "Youtube premium\nad-free vedios",
                          price: "999");
                    }),
              ),
              SizedBox(
                height: size.height * .02,
              ),
              //activity item start from here==================================>
              const Text(
                "Recent Activity :",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: size.height * .02,
              ),
              CustomListtile(
                title: "Topu's Activity",
                leading: Icons.alarm,
                text: "8:12 Pm",
                ontap: () {},
              ),
              SizedBox(
                height: size.height * .01,
              ),
              CustomListtile(
                title: "Chironjit's Activity",
                leading: Icons.alarm,
                text: "8:12 Pm",
                ontap: () {},
              ),
              SizedBox(
                height: size.height * .01,
              ),
              CustomListtile(
                title: "Sumon's Activity",
                leading: Icons.alarm,
                text: "8:12 Pm",
                ontap: () {},
              ),
              SizedBox(
                height: size.height * .01,
              ),
              CustomListtile(
                title: "Adiba's Activity",
                leading: Icons.alarm,
                ontap: () {},
              ),
              SizedBox(
                height: size.height * .01,
              ),
              CustomListtile(
                title: "Jamal's Activity",
                leading: Icons.alarm,
                text: "8:12 Pm",
                ontap: () {},
              ),
              SizedBox(
                height: size.height * .01,
              ),
              CustomListtile(
                title: "Parves's Activity",
                leading: Icons.alarm,
                text: "8:12 Pm",
                ontap: () {},
              ),
              SizedBox(
                height: size.height * .01,
              ),
              CustomListtile(
                title: "Shoriful's Activity",
                leading: Icons.alarm,
                text: "8:12 Pm",
                ontap: () {},
              ),
              SizedBox(
                height: size.height * .01,
              ),
              CustomListtile(
                title: "Sumaya's Activity",
                leading: Icons.alarm,
                ontap: () {},
              ),
              SizedBox(
                height: size.height * .01,
              ),
              CustomListtile(
                title: "Habubur's Activity",
                leading: Icons.alarm,
                text: "8:12 Pm",
                ontap: () {},
              ),
              SizedBox(
                height: size.height * .01,
              ),
              CustomListtile(
                title: "Khaled's Activity",
                leading: Icons.alarm,
                text: "8:12 Pm",
                ontap: () {},
              ),
              SizedBox(
                height: size.height * .15,
              )
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * .04),
        child: Container(
          height: size.height * .08,
          width: size.width,
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(10)),
          child: const Center(
            child: Text(
              "Scan",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

