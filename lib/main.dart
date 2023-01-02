import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url1 = Uri.parse(
    'https://docs.google.com/document/d/1u-Ug5ACSFnzRhq_AMCoMi4ItwSNfx6cHpnntQQFZC-E/edit?usp=sharing');

final Uri _url2 = Uri.parse("https://github.com/pshah2023");

final Uri _url3 = Uri.parse("https://www.patreon.com/user/creators?u=54892812");

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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

  Future<void> _launchUrl3() async {
    if (!await launchUrl(_url3)) {
      throw 'Could not launch $_url3';
    }
  }

  @override
  Widget build(BuildContext context) {
    return PlatformApp(
      debugShowCheckedModeBanner: false,
      home: PlatformScaffold(
        appBar: PlatformAppBar(
          title: const Text("Pranit Shah"),
          trailingActions: [
            Tooltip(
              waitDuration: const Duration(milliseconds: 400),
              message: "Press to open my patreon. I'd love any help.",
              child: PlatformIconButton(
                icon: const Icon(Icons.favorite),
                onPressed: _launchUrl3,
              ),
            ),
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
                    height: 400.0,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3)),
                items: [
                  Image.asset("assets/images/i1.jpg"),
                  Image.asset("assets/images/i2.jpg")
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: PlatformText(
                "Press the buttons to learn more about me! I'll be adding more features soon!",
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
