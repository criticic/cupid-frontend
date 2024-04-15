// Unused file, but keeping it for reference

import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:cupid/components/styled_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox.expand(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Image Carousel
              CarouselSlider(
                options: CarouselOptions(
                  height: 400.0,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.2,
                ),
                items: [1, 2, 3].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image:
                                    NetworkImage('https://fakeimg.pl/240x360'),
                                fit: BoxFit.cover)),
                      );
                    },
                  );
                }).toList(),
              ),
              const SizedBox(height: 40),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    const Text('Pseudonymous',
                        style: TextStyle(
                          fontSize: 24,
                          fontVariations: [FontVariation.weight(700)],
                          color: Color(0xffe94057),
                        )),
                    const SizedBox(height: 10),
                    const Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, fontVariations: []),
                    ),
                    const SizedBox(height: 30),
                    // Dot Indicator
                    Container(height: 10, width: 50, color: Colors.grey),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: StyledButton(text: 'Get Started', onTap: () {}),
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account?',
                      style: TextStyle(
                          fontVariations: [FontVariation.weight(300)])),
                  Text(' Sign In',
                      style: TextStyle(
                          color: Color(0xffe94057),
                          fontVariations: [FontVariation.weight(700)])),
                ],
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
