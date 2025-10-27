import 'package:flutter/material.dart';

class item_details extends StatefulWidget {
  const item_details({super.key});

  @override
  State<item_details> createState() => _item_detailsState();
}

class _item_detailsState extends State<item_details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          
        ),
      ),
    );
  }
}