import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:social_media_ui_demo/app/widgets/utils.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      assignId: true,
      init: HomeController(),
      builder: (controller) {
        return Scaffold(
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(MediaQuery.of(context).size.height),
              child: Padding(
                padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 40.h),
                child: Row(
                  children: [
                    Text(
                      'Home',
                      style: TextStyle(fontSize: 25.sp),
                    ),
                    Spacer(),
                    Icon(
                      Icons.add_box_outlined,
                      size: 30.w,
                    ),
                  ],
                ),
              )),
          body: Column(
            children: [
              SizedBox(
                height: 100.h,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.storyList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(5.w),
                      decoration: BoxDecoration(border: Border.all(color: Colors.grey.shade500, width: 2.w), shape: BoxShape.circle),
                      height: 80.w,
                      width: 80.w,
                      child: CircleAvatar(backgroundImage: NetworkImage(controller.storyList[index])),
                    );
                  },
                ),
              ),
              TabBar(
                controller: controller.tabController,
                isScrollable: true,
                padding: EdgeInsets.only(left: 10.w),
                tabAlignment: TabAlignment.start,
                unselectedLabelColor: Colors.black,
                labelColor: Colors.blue,
                labelStyle: TextStyle(fontWeight: FontWeight.w900, fontSize: 15.sp),
                unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 15.sp),
                tabs: const [
                  Tab(
                    text: 'SM Space',
                  ),
                  Tab(
                    text: 'Competitions',
                  ),
                  Tab(
                    text: 'Mentors',
                  ),
                  Tab(
                    text: 'Competitions1',
                  ),
                  Tab(
                    text: 'Mentors1',
                  ),
                ],
              ),
              2.verticalSpace,
              Expanded(
                child: TabBarView(
                  controller: controller.tabController,
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: controller.postList.data?.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: 10.h),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black38, width: 1.w),
                                      shape: BoxShape.circle,
                                    ),
                                    height: 50.w,
                                    width: 50.w,
                                    child: CircleAvatar(
                                      backgroundImage: NetworkImage(controller.postList.data![index].profileImage!),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        controller.postList.data![index].name!,
                                        style: TextStyle(fontSize: 16.sp),
                                      ),
                                      Text(
                                        controller.postList.data![index].userName!,
                                        style: TextStyle(fontSize: 15.sp),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.more_vert,
                                    size: 25.w,
                                  )
                                ],
                              ),
                              Image.network(controller.postList.data![index].image!),
                              10.verticalSpace,
                              Row(children: [
                                GestureDetector(
                                  onTap: () {
                                    controller.postList.data![index].isLiked = !controller.postList.data![index].isLiked;
                                    controller.postList.data![index].isLiked
                                        ? controller.postList.data![index].likes += 1
                                        : controller.postList.data![index].likes -= 1;
                                    controller.update();
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 15.w, right: 5.w, top: 5.h, bottom: 5.h),
                                    child: controller.postList.data![index].isLiked
                                        ? Icon(
                                            Icons.favorite,
                                            color: Colors.red,
                                            size: 25.w,
                                          )
                                        : Icon(
                                            Icons.favorite_outline_rounded,
                                            size: 25.w,
                                          ),
                                  ),
                                ),
                                Text(
                                  "${controller.postList.data![index].likes.toString()} Likes",
                                  style: TextStyle(fontSize: 15.sp),
                                ),
                                20.horizontalSpace,
                                Icon(
                                  Icons.messenger_outline,
                                  size: 25.w,
                                ),
                                10.horizontalSpace,
                                Text(
                                  "${controller.postList.data![index].likes.toString()} Comments",
                                  style: TextStyle(fontSize: 15.sp),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.send,
                                  size: 25.w,
                                ),
                                15.horizontalSpace,
                              ]),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
                                child: convertHashtag(controller.postList.data![index].description.toString()),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    Container(),
                    Container(),
                    Container(),
                    Container(),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
