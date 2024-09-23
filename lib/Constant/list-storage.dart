import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:socialapp/View/Custom-Widgets/Custom-reels.dart';
import 'package:video_player/video_player.dart';

enum ConstListStorage {
  homeStoryScroller({
    'Akshay': 'asset/Image/lookStory/avatar.png',
    'Raj': 'asset/Image/lookStory/boy.png',
    'Minal': 'asset/Image/lookStory/woman.png',
    'Kiran': 'asset/Image/lookStory/woman (1).png',
    'Man': 'asset/Image/lookStory/avatar-design.png',
    'Ramesh': 'asset/Image/lookStory/man.png'
  }),
  profileSetting({
    'Save': Icon(Icons.save),
    'Archive': Icon(CupertinoIcons.archivebox_fill),
    'Your activity': Icon(Icons.local_activity),
    'Notification': Icon(CupertinoIcons.bell_fill),
    'Time spent': Icon(CupertinoIcons.time_solid),
    'Account privacy': Icon(Icons.lock),
    'Close Friend': Icon(CupertinoIcons.star_circle_fill),
    'Blocked': Icon(Icons.block_outlined),
    'Message and story replies': Icon(Icons.message),
    'Tags and mentions': Icon(CupertinoIcons.at),
    'Comments': Icon(Icons.comment),
    'Sharing': Icon(CupertinoIcons.arrow_2_squarepath),
    'Favorites': Icon(Icons.star),
    'Muted accounts': Icon(CupertinoIcons.bell_slash_fill),
    'Device permissions': Icon(CupertinoIcons.device_phone_portrait),
    'Archiving and downloading': Icon(Icons.download),
    'Language': Icon(Icons.language),
    'Help': Icon(CupertinoIcons.helm),
    'Privacy Center': Icon(Icons.local_police_outlined),
    'Account Status': Icon(CupertinoIcons.person),
    'About': Icon(CupertinoIcons.info_circle_fill)
  }),
  profileSettingLabel({
    1: 'Account Options',
    2: 'Account Reach',
    3: 'Block list or Close Friend',
    4: 'TMCS Process',
    5: 'Device Manager',
    6: 'Help Support',
    7: 'Account Privacy'
  }),
  reels({
    1: 'asset/Video/VID-20240815-WA0002.mp4',
    2: 'asset/Video/VID-20240815-WA0003.mp4',
    3: 'asset/Video/VID-20240815-WA0009.mp4',
    4: 'asset/Video/VID-20240815-WA0010.mp4',
    5: 'asset/Video/WhatsApp Video 2024-08-15 at 14.30.41_29874bc2.mp4',
    6: 'asset/Video/WhatsApp Video 2024-08-15 at 14.30.43_1903e1ee.mp4',
    7: 'asset/Video/WhatsApp Video 2024-08-15 at 14.30.48_bf026e6a.mp4',
    8: 'asset/Video/WhatsApp Video 2024-08-15 at 14.30.51_1b0796ca.mp4'
  }),
  activity({
    'Follow Requests': 'Approve or Ignore requests',
    "You're all caught up": "See new activity for Account",
    'gaurgopaldas☑️': 'posted a thread you might know say guys?',
    '_janvi_patel': 'who you might know, is on shorts.',
    'rupaparayug': 'who you might know, is on shorts.',
    'antrakyada18': "others follow you, but you don't follow them.",
    'shiroya_0702, dk.patel.007': 'follow on thread app.',
    'kunj_trada_006': 'started following you.',
    'heyy_prince.27': 'started following you.',
    'raja_patel007': 'started following you.',
    'charlie_io9': 'started following you.'
  }),

  uploadPost({1: 'Post', 2: 'Reel', 3: 'Story', 4: 'Live'});

  final Map value;

  const ConstListStorage(this.value);
}
