import 'package:flutter/material.dart';


Widget myTabView() => ListView.builder(
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
