import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/other_page_controller.dart';

class OtherPageView extends GetView<OtherPageController> {
  const OtherPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OtherPageView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'OtherPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
