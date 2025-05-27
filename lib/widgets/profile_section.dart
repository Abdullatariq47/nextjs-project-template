import 'package:flutter/material.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Tiffany Watson',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You • Sept 22, 2001',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: const Color(0xFF6B4EFF),
              width: 2,
            ),
          ),
          child: ClipOval(
            child: Container(
              color: Colors.grey[900],
              child: const Icon(
                Icons.person,
                size: 40,
                color: Color(0xFF6B4EFF),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildZodiacInfo(
              title: 'Cancer',
              subtitle: 'Sun sign',
              icon: Icons.water_drop,
            ),
            _buildZodiacInfo(
              title: 'Leo',
              subtitle: 'Moon sign',
              icon: Icons.brightness_7,
            ),
            _buildZodiacInfo(
              title: 'Earth',
              subtitle: 'Element',
              icon: Icons.landscape,
            ),
            _buildZodiacInfo(
              title: 'Feminine',
              subtitle: 'Polarity',
              icon: Icons.female,
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildZodiacInfo({
    required String title,
    required String subtitle,
    required IconData icon,
  }) {
    return Column(
      children: [
        Icon(
          icon,
          color: const Color(0xFF6B4EFF),
          size: 24,
        ),
        const SizedBox(height: 4),
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        Text(
          subtitle,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
