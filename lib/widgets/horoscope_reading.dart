import 'package:flutter/material.dart';

class HoroscopeReading extends StatelessWidget {
  const HoroscopeReading({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Your today\'s horoscope',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          'Today, you can see how your daily routine has changed your life. Your physical and mental health is directly related to your personal transformation. Making sure that you are taken care of - body and mind - should be part of your schedule. That is just the beginning of your journey.',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white.withOpacity(0.8),
            height: 1.6,
          ),
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
          ),
          child: Row(
            children: [
              Text(
                'Read more',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.6),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(width: 8),
              Icon(
                Icons.arrow_forward,
                size: 20,
                color: Colors.white.withOpacity(0.6),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
