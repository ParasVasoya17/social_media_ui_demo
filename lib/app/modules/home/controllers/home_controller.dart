import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_media_ui_demo/app/models/post_model.dart';

class HomeController extends GetxController with GetTickerProviderStateMixin {
  TextEditingController commentController = TextEditingController();
  PostModel mentorsTab1 = PostModel(
    data: [
      Data(
          profileImage:
              "https://images.unsplash.com/photo-1575936123452-b67c3203c357?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          image:
              "https://images.unsplash.com/photo-1566438480900-0609be27a4be?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8aW1hZ2V8ZW58MHx8MHx8fDA%3D",
          name: "Mentor Tab One",
          comments: [],
          likes: 0,
          isLiked: false,
          userName: "mentor_tab1",
          description:
              "The term #social in regard to media suggests that platforms are user-centric and enable #communal activity. As such, social media can be viewed as online facilitators or enhancers of human networks—webs of individuals who enhance #social connectivity."),
      Data(
          profileImage:
              "https://images.unsplash.com/photo-1613323593608-abc90fec84ff?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8aW1hZ2V8ZW58MHx8MHx8fDA%3D",
          name: "Mentor Tab Two",
          image:
              "https://images.unsplash.com/photo-1574169207511-e21a21c8075a?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGltYWdlfGVufDB8fDB8fHww",
          comments: [],
          likes: 0,
          isLiked: false,
          userName: "mentor_tab2",
          description:
              "Users usually access social #media services through web-based #apps on #desktops or download services that offer social media functionality to their #mobile devices (e.g. smartphones and tablets). As users engage with these #electronic services, they create highly interactive platforms in which individuals, communities, and organizations can share, co-create, discuss, participate, and modify user-generated or self-curated #content posted online."),
    ],
  );

  PostModel competitionsTab1 = PostModel(
    data: [
      Data(
          profileImage:
              "https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8aW1hZ2V8ZW58MHx8MHx8fDA%3D",
          name: "Competitions Tab One",
          image:
              "https://plus.unsplash.com/premium_photo-1687382111414-7b87afa5da34?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fGltYWdlfGVufDB8fDB8fHww",
          comments: [],
          likes: 0,
          isLiked: false,
          userName: "competitions_tab1",
          description:
              "Additionally, social #media are used to document #memories, learn about and explore things, advertise oneself, and form friendships along with the growth of ideas from the creation of blogs, podcasts, videos, and #gaming sites."),
      Data(
          profileImage:
              "https://images.unsplash.com/photo-1603201101485-e232d22ad18b?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fGltYWdlfGVufDB8fDB8fHww",
          image:
              "https://plus.unsplash.com/premium_photo-1682513184135-b7b9b76fb4eb?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fGltYWdlfGVufDB8fDB8fHww",
          name: "Competitions Tab Two",
          comments: [],
          likes: 0,
          isLiked: false,
          userName: "competitions_tab2",
          description: "his changing relationship between #humans and #technology is the focus of the emerging field of #technological self-studies."),
    ],
  );

  PostModel mentorsTab = PostModel(
    data: [
      Data(
          profileImage:
              "https://images.unsplash.com/photo-1635468872214-8d30953f0057?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjJ8fGltYWdlfGVufDB8fDB8fHww",
          image:
              "https://images.unsplash.com/photo-1547219469-75c19c0bd220?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjR8fGltYWdlfGVufDB8fDB8fHww",
          name: "Tab Mentor One",
          comments: [],
          likes: 0,
          isLiked: false,
          userName: "tab_mentor1",
          description:
              "Observers have noted a wide range of #positive and #negative impacts when it comes to the use of social #media. Social media can help to improve an individual's sense of connectedness with real or #online communities and can be an effective #communication (or marketing) tool for corporations, entrepreneurs, non-profit organizations, advocacy groups, political parties, and governments. Observers have also seen that there has been a rise in #social movements using social media as a tool for communicating and organizing in times of #political unrest."),
      Data(
          profileImage:
              "https://images.unsplash.com/photo-1536748212969-6f77feeff225?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjh8fGltYWdlfGVufDB8fDB8fHww",
          name: "Tab Mentor Two",
          image:
              "https://images.unsplash.com/photo-1578589318433-39b5de440c3f?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzF8fGltYWdlfGVufDB8fDB8fHww",
          comments: [],
          likes: 0,
          isLiked: false,
          userName: "tab_mentor2",
          description:
              "The #PLATO system was launched in 1960 after being developed at the University of Illinois and subsequently #commercially marketed by Control Data Corporation. It offered early forms of social media features with 1973-era innovations such as Notes, #PLATO's message-forum application; TERM-talk, its instant-messaging feature; Talkomatic, perhaps the first online chat room"),
    ],
  );
  PostModel competitionTab = PostModel(
    data: [
      Data(
          profileImage:
              "https://images.unsplash.com/photo-1521727696769-849d83dd59db?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzJ8fGltYWdlfGVufDB8fDB8fHww",
          image:
              "https://images.unsplash.com/photo-1592311675507-00555370829d?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzZ8fGltYWdlfGVufDB8fDB8fHww",
          name: "Competition User One",
          comments: [],
          likes: 0,
          isLiked: false,
          userName: "competition_user1",
          description:
              "The idea that social #media are defined #simply by their ability to bring people together has been seen as too broad, as this would suggest that fundamentally different technologies #like the #telegraph and telephone are also social media."),
      Data(
          profileImage:
              "https://plus.unsplash.com/premium_photo-1698405202949-1313de4a437d?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDF8fGltYWdlfGVufDB8fDB8fHww",
          name: "Competition User One",
          image:
              "https://images.unsplash.com/photo-1574169207372-88518bd26f2d?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDN8fGltYWdlfGVufDB8fDB8fHww",
          comments: [],
          likes: 0,
          isLiked: false,
          userName: "competition_user2",
          description:
              "In 1991, when Tim Berners-Lee integrated #hypertext software with the Internet, he created the World Wide Web, marking the beginning of the modern era of #networked communication. This breakthrough facilitated the formation of online communities and enabled support for #offline groups through the use of weblogs, list servers, and email services."),
    ],
  );
  PostModel smSpaceTab = PostModel(
    data: [
      Data(
          profileImage: "https://images.pexels.com/photos/4126743/pexels-photo-4126743.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
          name: "Paras Vasoya",
          image: "https://images.pexels.com/photos/159304/network-cable-ethernet-computer-159304.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
          comments: [],
          likes: 0,
          isLiked: false,
          userName: "paras_vasoya",
          description:
              "Relying on one or two sourcing channels can #limit your reach and diversity of candidates. You want to use a mix of active and passive sourcing methods, such as job boards, social media, referrals, networking events, talent pools, and direct outreach. Each channel has its own advantages and disadvantages, so you need to evaluate them based on your hiring goals, budget, and timeline."),
      Data(
          profileImage: "https://images.indianexpress.com/2024/02/shark-tank-aman-gupta.jpg",
          image: "https://imgeng.jagran.com/images/2023/mar/Aman%20Gupta%20on%20future%20of%20shark%20Tank%20India1678018507500.jpg",
          name: "Aman Gupta",
          comments: [],
          likes: 0,
          isLiked: false,
          userName: "aman_gupta",
          description:
              "Hum bhi bana lenge, in this new India 🇮🇳 We Entrepreneurs today are not only building brands, we are building and inspiring a nation that thinks entrepreneurship is cool😎🙏🏻"),
      Data(
          profileImage: "https://images.pexels.com/photos/4458418/pexels-photo-4458418.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
          image: "https://images.pexels.com/photos/2911364/pexels-photo-2911364.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
          name: "Prince Gupta",
          comments: [],
          likes: 0,
          isLiked: false,
          userName: "prince_gupta",
          description:
              "Here is where the #hiring manager intake #meeting is so important if it can be had. So that you can gather what the day to day looks like for the candidate what’s  the nice to have what’s the must haves, what are some of the sell points of the role. What are the team dynamics, any cool new projects that they’ll be working on, and/or any of the other things that you would imagine a candidate we want to know from the initial Sourcing efforts."),
    ],
  );
  TabController? tabController;
  @override
  void onInit() {
    tabController = TabController(length: 5, vsync: this);
    super.onInit();
  }
}
