import 'package:flutter/material.dart';

class CustomListtile extends StatelessWidget {
  const CustomListtile(
      {super.key, required this.title, required this.leading, this.text, required this.ontap});

  final String title;
  final IconData leading;
  final String? text;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: ontap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: size.height * .02),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              child: Row(
                children: [
                  Icon(leading),
                  SizedBox(
                    width: size.width * .02,
                  ),
                  Text(
                    title,
                    style: const TextStyle(fontSize: 18, color: Colors.black54),
                  ),
                ],
              ),
            ),
            text != null
                ? SizedBox(
                    child: Row(
                      children: [
                        Container(
                            width: size.width * .18,
                            height: size.height * .03,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 188, 225, 243),
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(child: Text(text!))),
                        SizedBox(
                          width: size.width * .05,
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black54,
                        ),
                      ],
                    ),
                  )
                : const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black54,
                  ),
          ],
        ),
      ),
    );
  }
}


// ListTile(
//       title: Text(title,style: TextStyle(fontSize: 18,color: Colors.black54),),
//       leading: Icon(leading),
//       trailing: Row(
//         children: [
//           Container(
//             width: size.width * .05,
//             decoration: BoxDecoration(
//               color: Colors.lightBlue,
//               borderRadius: BorderRadius.circular(10)
//             ),
//             child: Padding(
//               padding:  EdgeInsets.symmetric(horizontal: size.width * .02,vertical: size.height * .01),
//               child: Text(text!),
//             )),
//           Icon(Icons.arrow_forward_ios,color: Colors.black54,),
//         ],
//       ),
//     );