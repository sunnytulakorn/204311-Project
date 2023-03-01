import 'package:cs311hw09/video_player_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(
    home: YoutubeDemoScreen(),
    title: ("My YouTube"),
  ));
}

class YoutubeDemoScreen extends StatefulWidget {
  const YoutubeDemoScreen({super.key});

  @override
  State<YoutubeDemoScreen> createState() => _YoutubeDemoScreenState();
}

class _YoutubeDemoScreenState extends State<YoutubeDemoScreen> {
  final List<String> screenImages = [
    "assets/image/1.jpg",
    "assets/image/2.jpg",
    "assets/image/3.jpg",
    "assets/image/4.jpg",
    "assets/image/5.jpg"
  ];

  final List<String> clipName = [
    "Levi vs Beast Titan I Attack on titan season 3 HD (60fps)",
    "Naruto and Sasuke vs Jigen Boruto Naruto Next Generations",
    "Tanjiro vs Rui _ Demon Slayer",
    "มาลีสวยมากโดนต่อยกลางสตรีม",
    "ลบไม่ได้ช่วยให้ลืม - Cover Night Live Lonely Planet"
  ];

  final List<String> clipDatetimes = [
    "6 hours ago",
    "20 hours ago",
    "3 days ago",
    "4 days ago",
    "3 weeks ago"
  ];

  final List<String> clipPlay = [
    "assets/video/1.mp4",
    "assets/video/2.mp4",
    "assets/video/3.mp4",
    "assets/video/4.mp4",
    "assets/video/5.mp4"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Center(
          child: Text("YouTube Demo", style: TextStyle(fontWeight: FontWeight.bold),),
        ),
        backgroundColor:const Color.fromARGB(255, 255, 17, 0),
      ),
      body: ListView.builder(itemCount : 5, itemBuilder : (context, index){
        return GestureDetector(
          onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => VideoPlayerScreen(title: clipName[index], video: clipPlay[index])),
              );
            },
          child: Column(
            children: [
              Image.asset(screenImages[index]),
              ListTile(
                leading: const Icon(Icons.account_circle, color: Colors.black, size: 40,),
                title: Text(clipName[index]),
                subtitle: Row(
                  children: [
                    const Text("Username . ", style: TextStyle(color: Colors.black),),
                    Text(clipDatetimes[index], style: const TextStyle(color: Colors.black))
                  ],
                ),
              ),
            ],
          ),
        );
      }
    ));
  }
}
