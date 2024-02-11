import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_round_button.dart';
import 'package:flutter/material.dart';

class WriteScreen extends StatefulWidget {
  const WriteScreen({super.key});

  @override
  State<WriteScreen> createState() => _WriteScreenState();
}

class _WriteScreenState extends State<WriteScreen> {
  final List<String> imageList = [];

  final titleController = TextEditingController();
  final priceController = TextEditingController();
  final descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: '내 물건 팔기'.text.bold.make(),
        actions: [
          Tap(
            onTap: () {},
            child: '임시저장'.text.make().p(15),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _ImageSelectWidget(imageList),
            _TitleEditor(titleController),
            _PriceEditor(priceController),
            _DescEditor(descriptionController),
          ],
        ),
      ),
      bottomSheet: RoundButton(
        text: '작성 완료',
        onTap: () {},
      ),
    );
  }
}

class _ImageSelectWidget {}

class _TitleEditor {}

class _PriceEditor {}

class _DescEditor {}
