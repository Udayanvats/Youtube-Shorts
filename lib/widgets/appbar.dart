import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SliverAppBar(
      floating: true,
      leadingWidth: size.width * 0.28,
      leading: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.005,
        ),
        child: Image.asset('assets/images/yt_logo_dark.png'),
      ),
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.cast)),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications_outlined),
          iconSize: 25,
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_outlined,
              size: 25,
            )),
        IconButton(
            onPressed: () {},
            icon: const CircleAvatar(
              foregroundImage: AssetImage('assets/images/currentuser.jpg'),
            )),
      ],
    );
  }
}
