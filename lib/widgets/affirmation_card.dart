import 'package:flutter/material.dart';
import 'dart:ui';

class AffirmationCard extends StatelessWidget {
  const AffirmationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.05),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Colors.white.withOpacity(0.1),
              width: 1,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Affirmation',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white.withOpacity(0.7),
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                'I can be a masterpiece and a work in progress at the same time',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  height: 1.4,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
