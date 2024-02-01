import 'package:flutter/material.dart';

class LocalLifeFragment extends StatefulWidget {
  const LocalLifeFragment({super.key});

  @override
  State<LocalLifeFragment> createState() => _LocalLifeFragmentState();
}

class _LocalLifeFragmentState extends State<LocalLifeFragment> {
  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: scrollController,
      children: [
        Image.network('https://picsum.photos/id/403/411/411', fit: BoxFit.fill),
        Container(height: 500, color: Colors.orange),
        Container(height: 500, color: Colors.green),
        Container(height: 500, color: Colors.orange),
        Container(height: 500, color: Colors.green),
      ],
    );
  }
}
