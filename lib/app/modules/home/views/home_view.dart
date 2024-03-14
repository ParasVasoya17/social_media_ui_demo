import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:social_media_ui_demo/app/models/post_model.dart';
import 'package:social_media_ui_demo/app/routes/app_pages.dart';
import 'package:social_media_ui_demo/app/widgets/common_bottomSheet.dart';
import 'package:social_media_ui_demo/app/widgets/utils.dart';
import 'package:stories_for_flutter/stories_for_flutter.dart';
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
          resizeToAvoidBottomInset: false,
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
                    const Spacer(),
                    Icon(
                      Icons.add_box_outlined,
                      size: 30.w,
                    ),
                  ],
                ),
              )),
          body: Column(
            children: [
              Stories(
                autoPlayDuration: const Duration(seconds: 3),
                circlePadding: 2.w,
                displayProgress: true,
                circleRadius: 35.r,
                storyStatusBarColor: Colors.transparent,
                fullpageUnisitedColor: Colors.white,
                fullpageVisitedColor: Colors.blue,
                storyCircleTextStyle: TextStyle(fontSize: 12.sp),
                onPageChanged: () {
                  controller.update();
                },
                storyItemList: [
                  StoryItem(
                      name: "First Story",
                      thumbnail: const NetworkImage(
                        "https://assets.materialup.com/uploads/82eae29e-33b7-4ff7-be10-df432402b2b6/preview",
                      ),
                      stories: [
                        Scaffold(
                          body: Container(
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  "https://wallpaperaccess.com/full/16568.png",
                                ),
                              ),
                            ),
                          ),
                        ),
                        Scaffold(
                          body: Container(
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  "https://i.pinimg.com/originals/2e/c6/b5/2ec6b5e14fe0cba0cb0aa5d2caeeccc6.jpg",
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
                  StoryItem(
                    name: "2nd",
                    thumbnail: const NetworkImage(
                      "https://www.shareicon.net/data/512x512/2017/03/29/881758_cup_512x512.png",
                    ),
                    stories: [
                      Scaffold(
                        body: Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                "https://i.pinimg.com/originals/31/bc/a9/31bca95ba39157a6cbf53cdf09dda672.png",
                              ),
                            ),
                          ),
                        ),
                      ),
                      Scaffold(
                        body: Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                "https://images.pexels.com/photos/260907/pexels-photo-260907.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                              ),
                            ),
                          ),
                        ),
                      ),
                      Scaffold(
                        body: Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                "https://images.pexels.com/photos/2911364/pexels-photo-2911364.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  StoryItem(
                    name: "3rd",
                    thumbnail: const NetworkImage(
                      "https://images.pexels.com/photos/4126743/pexels-photo-4126743.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                    ),
                    stories: [
                      Scaffold(
                        body: Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                "https://images.pexels.com/photos/4458418/pexels-photo-4458418.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  StoryItem(
                    name: "4th",
                    thumbnail: const NetworkImage(
                      "https://images.pexels.com/photos/163064/play-stone-network-networked-interactive-163064.jpeg",
                    ),
                    stories: [
                      Scaffold(
                        body: Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                "https://images.pexels.com/photos/159304/network-cable-ethernet-computer-159304.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  StoryItem(
                    name: "5th",
                    thumbnail: const NetworkImage(
                      "https://images.pexels.com/photos/607812/pexels-photo-607812.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                    ),
                    stories: [
                      Scaffold(
                        body: Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                "https://images.pexels.com/photos/2911364/pexels-photo-2911364.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  StoryItem(
                    name: "6th",
                    thumbnail: const NetworkImage(
                      "https://images.pexels.com/photos/2566581/pexels-photo-2566581.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                    ),
                    stories: [
                      Scaffold(
                        body: Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                "https://images.pexels.com/photos/260907/pexels-photo-260907.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  StoryItem(
                    name: "7th",
                    thumbnail: const NetworkImage(
                      "https://images.pexels.com/photos/2566581/pexels-photo-2566581.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                    ),
                    stories: [
                      Scaffold(
                        body: Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                "https://images.pexels.com/photos/260907/pexels-photo-260907.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                              ),
                            ),
                          ),
                        ),
                      ),
                      Scaffold(
                        backgroundColor: Colors.black,
                        body: Center(
                          child: Text(
                            "That's it",
                            style: TextStyle(
                              color: const Color(0xffffffff),
                              fontSize: 25.sp,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              TabBar(
                controller: controller.tabController,
                isScrollable: true,
                padding: EdgeInsets.only(left: 10.w),
                labelPadding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
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
                      itemCount: controller.smSpaceTab.data?.length,
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
                                      backgroundImage: NetworkImage(controller.smSpaceTab.data![index].profileImage!),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        controller.smSpaceTab.data![index].name!,
                                        style: TextStyle(fontSize: 16.sp),
                                      ),
                                      Text(
                                        controller.smSpaceTab.data![index].userName!,
                                        style: TextStyle(fontSize: 15.sp),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Icon(
                                    Icons.more_vert,
                                    size: 25.w,
                                  )
                                ],
                              ),
                              Image.network(controller.smSpaceTab.data![index].image!),
                              10.verticalSpace,
                              Row(children: [
                                GestureDetector(
                                  onTap: () {
                                    controller.smSpaceTab.data![index].isLiked = !controller.smSpaceTab.data![index].isLiked;
                                    controller.smSpaceTab.data![index].isLiked
                                        ? controller.smSpaceTab.data![index].likes += 1
                                        : controller.smSpaceTab.data![index].likes -= 1;
                                    controller.update();
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 15.w, right: 5.w, top: 5.h, bottom: 5.h),
                                    child: controller.smSpaceTab.data![index].isLiked
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
                                  "${controller.smSpaceTab.data![index].likes.toString()} Likes",
                                  style: TextStyle(fontSize: 15.sp),
                                ),
                                20.horizontalSpace,
                                GestureDetector(
                                  onTap: () {
                                    commentBottomSheet(
                                      context,
                                      controller.smSpaceTab.data![index].comments,
                                      controller,
                                      controller.commentController,
                                    ).then((value) => controller.commentController.clear());
                                  },
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.messenger_outline,
                                        size: 25.w,
                                      ),
                                      10.horizontalSpace,
                                      Text(
                                        "${controller.smSpaceTab.data![index].comments?.length.toString()} Comments",
                                        style: TextStyle(fontSize: 15.sp),
                                      ),
                                    ],
                                  ),
                                ),
                                const Spacer(),
                                Icon(
                                  Icons.send,
                                  size: 25.w,
                                ),
                                15.horizontalSpace,
                              ]),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
                                child: convertHashtag(controller.smSpaceTab.data![index].description.toString()),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: controller.competitionTab.data?.length,
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
                                      backgroundImage: NetworkImage(controller.competitionTab.data![index].profileImage!),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        controller.competitionTab.data![index].name!,
                                        style: TextStyle(fontSize: 16.sp),
                                      ),
                                      Text(
                                        controller.competitionTab.data![index].userName!,
                                        style: TextStyle(fontSize: 15.sp),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Icon(
                                    Icons.more_vert,
                                    size: 25.w,
                                  )
                                ],
                              ),
                              Image.network(controller.competitionTab.data![index].image!),
                              10.verticalSpace,
                              Row(children: [
                                GestureDetector(
                                  onTap: () {
                                    controller.competitionTab.data![index].isLiked = !controller.competitionTab.data![index].isLiked;
                                    controller.competitionTab.data![index].isLiked
                                        ? controller.competitionTab.data![index].likes += 1
                                        : controller.competitionTab.data![index].likes -= 1;
                                    controller.update();
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 15.w, right: 5.w, top: 5.h, bottom: 5.h),
                                    child: controller.competitionTab.data![index].isLiked
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
                                  "${controller.competitionTab.data![index].likes.toString()} Likes",
                                  style: TextStyle(fontSize: 15.sp),
                                ),
                                20.horizontalSpace,
                                GestureDetector(
                                  onTap: () {
                                    commentBottomSheet(
                                      context,
                                      controller.competitionTab.data![index].comments,
                                      controller,
                                      controller.commentController,
                                    ).then((value) => controller.commentController.clear());
                                  },
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.messenger_outline,
                                        size: 25.w,
                                      ),
                                      10.horizontalSpace,
                                      Text(
                                        "${controller.competitionTab.data![index].comments?.length.toString()} Comments",
                                        style: TextStyle(fontSize: 15.sp),
                                      ),
                                    ],
                                  ),
                                ),
                                const Spacer(),
                                Icon(
                                  Icons.send,
                                  size: 25.w,
                                ),
                                15.horizontalSpace,
                              ]),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
                                child: convertHashtag(controller.competitionTab.data![index].description.toString()),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: controller.mentorsTab.data?.length,
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
                                      backgroundImage: NetworkImage(controller.mentorsTab.data![index].profileImage!),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        controller.mentorsTab.data![index].name!,
                                        style: TextStyle(fontSize: 16.sp),
                                      ),
                                      Text(
                                        controller.mentorsTab.data![index].userName!,
                                        style: TextStyle(fontSize: 15.sp),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Icon(
                                    Icons.more_vert,
                                    size: 25.w,
                                  )
                                ],
                              ),
                              Image.network(controller.mentorsTab.data![index].image!),
                              10.verticalSpace,
                              Row(children: [
                                GestureDetector(
                                  onTap: () {
                                    controller.mentorsTab.data![index].isLiked = !controller.mentorsTab.data![index].isLiked;
                                    controller.mentorsTab.data![index].isLiked
                                        ? controller.mentorsTab.data![index].likes += 1
                                        : controller.mentorsTab.data![index].likes -= 1;
                                    controller.update();
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 15.w, right: 5.w, top: 5.h, bottom: 5.h),
                                    child: controller.mentorsTab.data![index].isLiked
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
                                  "${controller.mentorsTab.data![index].likes.toString()} Likes",
                                  style: TextStyle(fontSize: 15.sp),
                                ),
                                20.horizontalSpace,
                                GestureDetector(
                                  onTap: () {
                                    commentBottomSheet(
                                      context,
                                      controller.mentorsTab.data![index].comments,
                                      controller,
                                      controller.commentController,
                                    ).then((value) => controller.commentController.clear());
                                  },
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.messenger_outline,
                                        size: 25.w,
                                      ),
                                      10.horizontalSpace,
                                      Text(
                                        "${controller.mentorsTab.data![index].comments?.length.toString()} Comments",
                                        style: TextStyle(fontSize: 15.sp),
                                      ),
                                    ],
                                  ),
                                ),
                                const Spacer(),
                                Icon(
                                  Icons.send,
                                  size: 25.w,
                                ),
                                15.horizontalSpace,
                              ]),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
                                child: convertHashtag(controller.mentorsTab.data![index].description.toString()),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: controller.competitionsTab1.data?.length,
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
                                      backgroundImage: NetworkImage(controller.competitionsTab1.data![index].profileImage!),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        controller.competitionsTab1.data![index].name!,
                                        style: TextStyle(fontSize: 16.sp),
                                      ),
                                      Text(
                                        controller.competitionsTab1.data![index].userName!,
                                        style: TextStyle(fontSize: 15.sp),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Icon(
                                    Icons.more_vert,
                                    size: 25.w,
                                  )
                                ],
                              ),
                              Image.network(controller.competitionsTab1.data![index].image!),
                              10.verticalSpace,
                              Row(children: [
                                GestureDetector(
                                  onTap: () {
                                    controller.competitionsTab1.data![index].isLiked = !controller.competitionsTab1.data![index].isLiked;
                                    controller.competitionsTab1.data![index].isLiked
                                        ? controller.competitionsTab1.data![index].likes += 1
                                        : controller.competitionsTab1.data![index].likes -= 1;
                                    controller.update();
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 15.w, right: 5.w, top: 5.h, bottom: 5.h),
                                    child: controller.competitionsTab1.data![index].isLiked
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
                                  "${controller.competitionsTab1.data![index].likes.toString()} Likes",
                                  style: TextStyle(fontSize: 15.sp),
                                ),
                                20.horizontalSpace,
                                GestureDetector(
                                  onTap: () {
                                    commentBottomSheet(
                                      context,
                                      controller.competitionsTab1.data![index].comments,
                                      controller,
                                      controller.commentController,
                                    ).then((value) => controller.commentController.clear());
                                  },
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.messenger_outline,
                                        size: 25.w,
                                      ),
                                      10.horizontalSpace,
                                      Text(
                                        "${controller.competitionsTab1.data![index].comments?.length.toString()} Comments",
                                        style: TextStyle(fontSize: 15.sp),
                                      ),
                                    ],
                                  ),
                                ),
                                const Spacer(),
                                Icon(
                                  Icons.send,
                                  size: 25.w,
                                ),
                                15.horizontalSpace,
                              ]),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
                                child: convertHashtag(controller.competitionsTab1.data![index].description.toString()),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: controller.mentorsTab1.data?.length,
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
                                      backgroundImage: NetworkImage(controller.mentorsTab1.data![index].profileImage!),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        controller.mentorsTab1.data![index].name!,
                                        style: TextStyle(fontSize: 16.sp),
                                      ),
                                      Text(
                                        controller.mentorsTab1.data![index].userName!,
                                        style: TextStyle(fontSize: 15.sp),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Icon(
                                    Icons.more_vert,
                                    size: 25.w,
                                  )
                                ],
                              ),
                              Image.network(controller.mentorsTab1.data![index].image!),
                              10.verticalSpace,
                              Row(children: [
                                GestureDetector(
                                  onTap: () {
                                    controller.mentorsTab1.data![index].isLiked = !controller.mentorsTab1.data![index].isLiked;
                                    controller.mentorsTab1.data![index].isLiked
                                        ? controller.mentorsTab1.data![index].likes += 1
                                        : controller.mentorsTab1.data![index].likes -= 1;
                                    controller.update();
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 15.w, right: 5.w, top: 5.h, bottom: 5.h),
                                    child: controller.mentorsTab1.data![index].isLiked
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
                                  "${controller.mentorsTab1.data![index].likes.toString()} Likes",
                                  style: TextStyle(fontSize: 15.sp),
                                ),
                                20.horizontalSpace,
                                GestureDetector(
                                  onTap: () {
                                    commentBottomSheet(
                                      context,
                                      controller.mentorsTab1.data![index].comments,
                                      controller,
                                      controller.commentController,
                                    ).then((value) => controller.commentController.clear());
                                  },
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.messenger_outline,
                                        size: 25.w,
                                      ),
                                      10.horizontalSpace,
                                      Text(
                                        "${controller.mentorsTab1.data![index].comments?.length.toString()} Comments",
                                        style: TextStyle(fontSize: 15.sp),
                                      ),
                                    ],
                                  ),
                                ),
                                const Spacer(),
                                Icon(
                                  Icons.send,
                                  size: 25.w,
                                ),
                                15.horizontalSpace,
                              ]),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
                                child: convertHashtag(controller.mentorsTab1.data![index].description.toString()),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Future commentBottomSheet(context, List<String>? list, HomeController controller, TextEditingController textEditingController) {
    return CommonBottomSheet(
        context: context,
        child: GetBuilder<HomeController>(
          builder: (controller) {
            return SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: GestureDetector(
                onTap: () {
                  FocusManager.instance.primaryFocus?.unfocus();
                },
                child: Scaffold(
                  resizeToAvoidBottomInset: true,
                  appBar: PreferredSize(
                      preferredSize: Size.fromHeight(80.h),
                      child: Padding(
                        padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 40.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                                onTap: () {
                                  FocusManager.instance.primaryFocus?.unfocus();
                                  Get.back();
                                },
                                child: Icon(
                                  Icons.arrow_back,
                                  size: 25.w,
                                )),
                            Text(
                              'Comments',
                              style: TextStyle(fontSize: 25.sp, color: Colors.black),
                            ),
                            Container(
                              width: 25.w,
                            ),
                          ],
                        ),
                      )),
                  body: Column(
                    children: [
                      Expanded(
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          itemCount: list?.length,
                          itemBuilder: (context, index) {
                            return Container(
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Column(
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
                                              backgroundImage: NetworkImage(
                                                  "https://images.unsplash.com/photo-1575936123452-b67c3203c357?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: MediaQuery.of(context).size.width * 0.50,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Unknown User",
                                              style: TextStyle(fontSize: 16.sp),
                                            ),
                                            4.verticalSpace,
                                            Text(
                                              list![index],
                                              softWrap: true,
                                              overflow: TextOverflow.visible,
                                              style: TextStyle(fontSize: 14.sp),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Icon(
                                    Icons.more_vert,
                                    size: 25.w,
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      4.verticalSpace,
                      Row(
                        children: [
                          20.horizontalSpace,
                          Expanded(
                            child: TextField(
                              controller: textEditingController,
                              style: TextStyle(fontSize: 18.sp),
                              decoration: InputDecoration(
                                hintText: 'Comment',
                                hintStyle: TextStyle(fontSize: 18.sp),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.black,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                          20.horizontalSpace,
                          GestureDetector(
                            onTap: () {
                              list?.add(textEditingController.text);
                              textEditingController.clear();
                              controller.update();
                            },
                            child: Icon(
                              Icons.send,
                              size: 25.w,
                            ),
                          ),
                          10.horizontalSpace,
                        ],
                      ),
                      20.verticalSpace,
                    ],
                  ),
                ),
              ),
            );
          },
        ));
  }
}
