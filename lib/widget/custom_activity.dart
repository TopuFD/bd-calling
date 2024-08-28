
import 'package:flutter/material.dart';
class CustomActivity extends StatelessWidget {
  const CustomActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: Icon(Icons.document_scanner),
      title: Text("Topu Roy"),
      trailing: Row(
        children: [
          
        ],
      ),
    );
  }
}
