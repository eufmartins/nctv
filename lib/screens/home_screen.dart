// lib/screens/home_screen.dart

import 'package:flutter/material.dart';
import '../models/channel.dart';
import '../widgets/video_player.dart';
import '../widgets/channel_logo.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Channel> channels = [
    Channel(name: 'ESPN', id: 'espn'),
    Channel(name: 'ESPN2', id: 'espn2'),
    Channel(name: 'ESPN3', id: 'espn3'),
    Channel(name: 'ESPN4', id: 'espn4'),
    Channel(name: 'SporTV', id: 'sportv'),
    Channel(name: 'SporTV2', id: 'sportv2'),
    Channel(name: 'SporTV3', id: 'sportv3'),
    Channel(name: 'SporTV4', id: 'sportv4'),
  ];

  String selectedId = 'espn';

  String get selectedUrl => 'https://reidoscanais.app/embed/?id=$selectedId';

  void selectChannel(String id) {
    setState(() {
      selectedId = id;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Assista TV')),
      body: Column(
        children: [
          VideoPlayer(url: selectedUrl),
          SizedBox(height: 16),
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(8.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
              itemCount: channels.length,
              itemBuilder: (context, index) {
                return ChannelLogo(
                  channel: channels[index],
                  onTap: () => selectChannel(channels[index].id),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
