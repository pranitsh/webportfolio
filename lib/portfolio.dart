import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:go_router/go_router.dart';

class WebPortfolio extends StatefulWidget {
  const WebPortfolio({super.key});

  @override
  State<WebPortfolio> createState() => _WebPortfolioState();
}

class _WebPortfolioState extends State<WebPortfolio> {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: YoutubePlayer(
                controller: _controller1,
                aspectRatio: 16 / 9,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("assets/images/3.jpg"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("assets/images/4.png"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: YoutubePlayer(
                controller: _controller2,
                aspectRatio: 16 / 9,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: YoutubePlayer(
                controller: _controller3,
                aspectRatio: 16 / 9,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: YoutubePlayer(
                controller: _controller4,
                aspectRatio: 16 / 9,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: YoutubePlayer(
                controller: _controller5,
                aspectRatio: 16 / 9,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: YoutubePlayer(
                controller: _controller6,
                aspectRatio: 16 / 9,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: YoutubePlayer(
                controller: _controller7,
                aspectRatio: 16 / 9,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: YoutubePlayer(
                controller: _controller8,
                aspectRatio: 16 / 9,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: YoutubePlayer(
                controller: _controller9,
                aspectRatio: 16 / 9,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: YoutubePlayer(
                controller: _controller10,
                aspectRatio: 16 / 9,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("assets/images/1.jpg"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("assets/images/2.jpg"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: PlatformElevatedButton(
                onPressed: (() => context.go('/')),
                child: const Text('Go Back'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
