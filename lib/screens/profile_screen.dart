import 'package:flutter/material.dart';
import 'package:navigate/helper/navigate_me.dart';
import 'package:navigate/screens/setting_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String avatarUrl = "https://avatars.githubusercontent.com/u/43970405?v=4";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        actions: [
          GestureDetector(
            onTap: () => goTo(context, const SettingScreen()),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.settings),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              /**
               * container widget
               */
              Container(
                height: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/fluter_dash.png"),
                  ),
                ),
                child: const Text("hello world"),
              ),
              const SizedBox(height: 40.0),

              /**
               * center  widget
               */
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(500),
                  child: Image.network(
                    avatarUrl,
                    width: 150.0,
                  ),
                ),
              ),

              /**
               * center  widget
               */
              Center(
                child: CircleAvatar(
                  radius: 100,
                  child: Image.asset(
                    "assets/images/fluter_dash.png",
                    width: 500.0,
                  ),
                ),
              ),

              /**
               * network image  widget
               */
              Image.network(
                'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
              ),

              /**
               * stack  widget
               */
              Stack(
                children: [
                  const Center(child: CircularProgressIndicator.adaptive()),
                  FadeInImage.assetNetwork(
                    fadeInDuration: const Duration(milliseconds: 2000),
                    placeholder: "assets/images/fluter_dash.png",
                    image: avatarUrl,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
