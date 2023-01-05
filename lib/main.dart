// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webportfolio/portfolio.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:go_router/go_router.dart';
import 'package:webview_flutter_platform_interface/webview_flutter_platform_interface.dart';

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const MyApp();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'details',
          builder: (BuildContext context, GoRouterState state) {
            return const WebPortfolio();
          },
        ),
      ],
    ),
  ],
);

final Uri _url1 = Uri.parse(
    'https://docs.google.com/document/d/1u-Ug5ACSFnzRhq_AMCoMi4ItwSNfx6cHpnntQQFZC-E/edit?usp=sharing');

final Uri _url2 = Uri.parse("https://github.com/pshah2023");

// ignore: unused_element
final Uri _url3 = Uri.parse("https://www.patreon.com/user/creators?u=54892812");

final Uri _url4 = Uri.parse(
    "https://www.youtube.com/playlist?list=PLHQgwEtnHIWdoYsKcwgUxXG0xjuNBDINo");

void main() async {
  runApp(const StartApp());
}

class StartApp extends StatefulWidget {
  const StartApp({super.key});

  @override
  State<StartApp> createState() => _StartAppState();
}

class _StartAppState extends State<StartApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _controller1 = YoutubePlayerController.fromVideoId(
    videoId: 'i0FtJN7P45E',
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      mute: true,
      showControls: false,
      showVideoAnnotations: false,
    ),
  );

  final _controller2 = YoutubePlayerController.fromVideoId(
    videoId: 'YvmOftA7gSo',
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      mute: true,
      showControls: false,
      showVideoAnnotations: false,
    ),
  );

  final _controller3 = YoutubePlayerController.fromVideoId(
    videoId: 'K5n3a1sN7Pw',
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      mute: true,
      showControls: false,
      showVideoAnnotations: false,
    ),
  );
  final _controller4 = YoutubePlayerController.fromVideoId(
    videoId: 'eqDPykjeNMc',
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      mute: true,
      showControls: false,
      showVideoAnnotations: false,
    ),
  );
  final _controller5 = YoutubePlayerController.fromVideoId(
    videoId: 'qzFCxLEPNmk',
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      mute: true,
      showControls: false,
      showVideoAnnotations: false,
    ),
  );
  final _controller6 = YoutubePlayerController.fromVideoId(
    videoId: '6JG6qtrLtRc',
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      mute: true,
      showControls: false,
      showVideoAnnotations: false,
    ),
  );
  final _controller7 = YoutubePlayerController.fromVideoId(
    videoId: 'Bjmn1X1mq5Y',
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      mute: true,
      showControls: false,
      showVideoAnnotations: false,
    ),
  );
  final _controller8 = YoutubePlayerController.fromVideoId(
    videoId: '6bEUfil3PHI',
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      mute: true,
      showControls: false,
      showVideoAnnotations: false,
    ),
  );
  final _controller9 = YoutubePlayerController.fromVideoId(
    videoId: 'EVtTQZAX-lg',
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      mute: true,
      showControls: false,
      showVideoAnnotations: false,
    ),
  );
  final _controller10 = YoutubePlayerController.fromVideoId(
    videoId: 'AinnP6pDH5s',
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      mute: true,
      showControls: false,
      showVideoAnnotations: false,
    ),
  );
  Future<void> _launchUrl1() async {
    if (!await launchUrl(_url1)) {
      throw 'Could not launch $_url1';
    }
  }

  Future<void> _launchUrl2() async {
    if (!await launchUrl(_url2)) {
      throw 'Could not launch $_url2';
    }
  }

  Future<void> _launchUrl4() async {
    if (!await launchUrl(_url4)) {
      throw 'Could not launch $_url4';
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pranit Shah"),
        actions: [
          Tooltip(
            waitDuration: const Duration(milliseconds: 400),
            message: "Press to get my github.",
            child: PlatformIconButton(
              icon: const Icon(Icons.archive),
              onPressed: _launchUrl2,
            ),
          ),
          Tooltip(
            waitDuration: const Duration(milliseconds: 400),
            message: "Press to open my resume.",
            child: PlatformIconButton(
              icon: const Icon(Icons.description),
              onPressed: _launchUrl1,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 6,
            child: CarouselSlider(
              options: CarouselOptions(
                  padEnds: false,
                  height: 400.0,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 6)),
              items: [
                YoutubePlayer(
                  controller: _controller1,
                  aspectRatio: 16 / 9,
                ),
                Image.asset("assets/images/3.jpg"),
                Image.asset("assets/images/4.png"),
                YoutubePlayer(
                  controller: _controller2,
                  aspectRatio: 16 / 9,
                ),
                YoutubePlayer(
                  controller: _controller3,
                  aspectRatio: 16 / 9,
                ),
                YoutubePlayer(
                  controller: _controller4,
                  aspectRatio: 16 / 9,
                ),
                YoutubePlayer(
                  controller: _controller5,
                  aspectRatio: 16 / 9,
                ),
                YoutubePlayer(
                  controller: _controller6,
                  aspectRatio: 16 / 9,
                ),
                YoutubePlayer(
                  controller: _controller7,
                  aspectRatio: 16 / 9,
                ),
                YoutubePlayer(
                  controller: _controller8,
                  aspectRatio: 16 / 9,
                ),
                YoutubePlayer(
                  controller: _controller9,
                  aspectRatio: 16 / 9,
                ),
                YoutubePlayer(
                  controller: _controller10,
                  aspectRatio: 16 / 9,
                ),
                Image.asset("assets/images/1.jpg"),
                Image.asset("assets/images/2.jpg"),
              ],
            ),
          ),
          const Expanded(
            flex: 1,
            child: Center(
              child: Text(
                "A carousel of my works of art. I am a self taught artist.\nSee more by clicking the buttons below and on the top bar.",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: PlatformElevatedButton(
                alignment: Alignment.center,
                onPressed: _launchUrl4,
                child: const Text('See more of the art I created!'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
