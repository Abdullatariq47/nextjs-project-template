import 'package:flutter/material.dart';
import '../widgets/time_tabs.dart';
import '../widgets/profile_section.dart';
import '../widgets/zodiac_wheel.dart';
import '../widgets/affirmation_card.dart';
import '../widgets/horoscope_reading.dart';

class HoroscopeScreen extends StatelessWidget {
  const HoroscopeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                const Text(
                  'HOROSCOPE',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),
                const SizedBox(height: 20),
                const TimeTabs(),
                const SizedBox(height: 20),
                const ProfileSection(),
                const SizedBox(height: 30),
                const ZodiacWheel(),
                const SizedBox(height: 30),
                const AffirmationCard(),
                const SizedBox(height: 20),
                const HoroscopeReading(),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
