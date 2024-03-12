import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:social_media_ui_demo/app/modules/home/views/home_view.dart';
import 'package:social_media_ui_demo/app/modules/other_page/views/other_page_view.dart';

import '../controllers/bottom_bar_controller.dart';

class BottomBarView extends GetView<BottomBarController> {
  const BottomBarView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomBarController>(
      init: BottomBarController(),
      assignId: true,
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.transparent,
          resizeToAvoidBottomInset: false,
          extendBody: true,
          bottomNavigationBar: Container(
            color: Colors.transparent,
            height: 110.h,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 16.h),
                child: Container(
                  height: 62.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: Colors.grey[100],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          controller.currentIndex.value = 0;
                          controller.update();
                        },
                        child: Icon(
                          Icons.home,
                          color: controller.currentIndex.value == 0 ? Colors.blue : Colors.grey,
                          size: 35.w,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          controller.currentIndex.value = 1;
                          controller.update();
                        },
                        child: Icon(
                          Icons.search,
                          color: controller.currentIndex.value == 1 ? Colors.blue : Colors.grey,
                          size: 35.w,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          controller.currentIndex.value = 2;
                          controller.update();
                        },
                        child: Icon(
                          Icons.person,
                          color: controller.currentIndex.value == 2 ? Colors.blue : Colors.grey,
                          size: 35.w,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          controller.currentIndex.value = 3;
                          controller.update();
                        },
                        child: Icon(
                          Icons.notifications,
                          color: controller.currentIndex.value == 3 ? Colors.blue : Colors.grey,
                          size: 35.w,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          controller.currentIndex.value = 4;
                          controller.update();
                        },
                        child: Icon(
                          Icons.menu,
                          color: controller.currentIndex.value == 4 ? Colors.blue : Colors.grey,
                          size: 35.w,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          body: controller.currentIndex.value == 0
              ? const HomeView()
              : controller.currentIndex.value == 1
                  ? const OtherPageView()
                  : controller.currentIndex.value == 2
                      ? const OtherPageView()
                      : controller.currentIndex.value == 3
                          ? const OtherPageView()
                          : const OtherPageView(),
        );
      },
    );
  }
}
