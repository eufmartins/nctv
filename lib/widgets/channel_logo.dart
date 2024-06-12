// lib/widgets/channel_logo.dart

import 'package:flutter/material.dart';
import '../models/channel.dart';

class ChannelLogo extends StatelessWidget {
  final Channel channel;
  final Function onTap;

  ChannelLogo({required this.channel, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4.0,
              spreadRadius: 1.0,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              channel.logoPath,
              height: 50,
              width: 50,
            ),
            SizedBox(height: 8),
            Text(
              channel.name,
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
