import 'package:flutter/material.dart';

AppBar myTabBar(
  BuildContext context, {
  required String title,
  Widget rightIcon = const SizedBox.shrink(),
  Widget leftIcon = const SizedBox.shrink(),
}) =>
    AppBar(
      bottom: const TabBar(
          labelColor: Colors.black,
          labelStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          tabs: [
            Tab(text: 'All'),
            Tab(text: 'Mentioned'),
          ]),
      backgroundColor: Colors.transparent,
      title: FittedBox(
        fit: BoxFit.fitWidth,
        child: Text(
          title,
          style: const TextStyle(fontSize: 24, color: Colors.black),
        ),
      ),
      actions: [rightIcon],
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: leftIcon,
      ),
    );

Widget allNotification() => ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: ListTile(
          leading: const CircleAvatar(
            backgroundImage: AssetImage('assets/images/apple.png'),
          ),
          title: const Text(
            '12 day Dhaka Weather Forecast and temperature.',
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          subtitle: const Text(
            '2 hours ago',
            style: TextStyle(fontSize: 13),
          ),
          trailing: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: const Image(
                  image: AssetImage('assets/images/apple.png'),
                  height: 200,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ),
              const Icon(Icons.more_vert_rounded)
            ],
          ),
        ),
      ),
    );

//assets/images/portrait.jpg
