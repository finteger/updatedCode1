import 'package:flutter/material.dart';
import 'package:guestbook/route/route.dart' as route;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const FlutterLogo(size: 54),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.add_alert),
              tooltip: 'This is a snackbar.',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('Successfully Shown Snackbar!')));
              },
            ),
            IconButton(
              onPressed: null,
              icon: const Icon(Icons.info),
            )
          ],
        ),
        body: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(height: 300.0),
              items: [
                Stack(children: [
                  Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.50),
                          spreadRadius: 15,
                          blurRadius: 17,
                          offset: Offset(0, 7),
                        ),
                      ],
                          image: DecorationImage(
                            image: AssetImage('assets/images/download.png'),
                            fit: BoxFit.cover,
                          ))),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        AnimatedTextKit(
                          animatedTexts: [
                            TypewriterAnimatedText(
                              'When you get here, you understand.',
                              textStyle: const TextStyle(
                                fontSize: 20.0,
                                color: Colors.yellow,
                                fontWeight: FontWeight.bold,
                              ),
                              speed: const Duration(milliseconds: 200),
                            ),
                          ],
                          totalRepeatCount: 4,
                          pause: const Duration(milliseconds: 1000),
                          displayFullTextOnTap: true,
                          stopPauseOnTap: false,
                        )
                      ],
                    ),
                  )
                ]),
                Container(),
                Container(),
                Container(),
                Container(),
              ],
            )
          ],
        ));
  }
}
