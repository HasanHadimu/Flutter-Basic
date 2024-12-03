import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Flutter Basic',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        elevation: 3,
        backgroundColor: Colors.blue[800],
        actions: const [
          Icon(
            Icons.person,
            color: Colors.white,
          ),
          SizedBox(
            width: 8,
          ),
          Icon(
            Icons.settings,
            color: Colors.white,
          ),
          SizedBox(
            width: 16,
          ),
        ],
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(30),
            padding: EdgeInsets.all(16),
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: (Colors.red),
            ),
            child: Image.network(
                'https://media.istockphoto.com/id/1443562748/id/foto/kucing-jahe-lucu.jpg?s=1024x1024&w=is&k=20&c=IZt8pgQOEYMh6p1aycJcwmc4bQDMrIwmou4Tp0sAtvA='),
          ),
          Image.asset('assets/images/kucing.jpg'),
          const CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(
                'https://media.istockphoto.com/id/1443562157/id/foto/kucing-jahe-berbaring.jpg?s=1024x1024&w=is&k=20&c=5yndQIKiLs-k2Cc7zTQG2iM0laWDu1kgZjHWEVaTsqc='),
          )
        ],
      ),
    );
  }
}
