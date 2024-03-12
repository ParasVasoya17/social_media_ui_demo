import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_media_ui_demo/app/models/post_model.dart';

class HomeController extends GetxController with GetTickerProviderStateMixin {
  List<String> storyList = [
    "https://images.pexels.com/photos/163064/play-stone-network-networked-interactive-163064.jpeg",
    "https://images.pexels.com/photos/159304/network-cable-ethernet-computer-159304.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/607812/pexels-photo-607812.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/2911364/pexels-photo-2911364.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/2566581/pexels-photo-2566581.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/260907/pexels-photo-260907.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/4126743/pexels-photo-4126743.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/4458418/pexels-photo-4458418.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
  ];
  PostModel postList = PostModel(
    data: [
      Data(
          profileImage: "https://images.pexels.com/photos/4458418/pexels-photo-4458418.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
          image: "https://images.pexels.com/photos/2911364/pexels-photo-2911364.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
          name: "Prince Gupta",
          comments: 0,
          likes: 0,
          isLiked: false,
          userName: "prince_gupta",
          description:
              "Here is where the #hiring manager intake #meeting is so important if it can be had. So that you can gather what the day to day looks like for the candidate what’s  the nice to have what’s the must haves, what are some of the sell points of the role. What are the team dynamics, any cool new projects that they’ll be working on, and/or any of the other things that you would imagine a candidate we want to know from the initial Sourcing efforts."),
      Data(
          profileImage: "https://images.pexels.com/photos/4126743/pexels-photo-4126743.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
          name: "Paras Vasoya",
          image: "https://images.pexels.com/photos/159304/network-cable-ethernet-computer-159304.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
          comments: 0,
          likes: 0,
          isLiked: false,
          userName: "paras_vasoya",
          description:
              "Relying on one or two sourcing channels can #limit your reach and diversity of candidates. You want to use a mix of active and passive sourcing methods, such as job boards, social media, referrals, networking events, talent pools, and direct outreach. Each channel has its own advantages and disadvantages, so you need to evaluate them based on your hiring goals, budget, and timeline."),
    ],
  );
  TabController? tabController;
  @override
  void onInit() {
    tabController = TabController(length: 5, vsync: this);
    super.onInit();
  }
}
