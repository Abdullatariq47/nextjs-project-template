import 'package:flutter/material.dart';
import 'dart:math' as math;

class ZodiacWheel extends StatelessWidget {
  const ZodiacWheel({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: RadialGradient(
            colors: [
              const Color(0xFFFF6B6B).withOpacity(0.2),
              Colors.transparent,
            ],
            stops: const [0.6, 1.0],
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Outer circle with zodiac signs
            ...List.generate(12, (index) {
              final angle = (index * 30) * (math.pi / 180);
              return Transform.translate(
                offset: Offset(
                  120 * math.cos(angle),
                  120 * math.sin(angle),
                ),
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color(0xFF6B4EFF).withOpacity(0.3),
                      width: 1,
                    ),
                  ),
                  child: const Icon(
                    Icons.star,
                    color: Color(0xFF6B4EFF),
                    size: 20,
                  ),
                ),
              );
            }),
            
            // Center Cancer symbol
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: const Color(0xFFFF6B6B).withOpacity(0.2),
                shape: BoxShape.circle,
                border: Border.all(
                  color: const Color(0xFFFF6B6B),
                  width: 2,
                ),
              ),
              child: const Center(
                child: Text(
                  '♋',
                  style: TextStyle(
                    color: Color(0xFFFF6B6B),
                    fontSize: 60,
                  ),
                ),
              ),
            ),
            
            // Small decorative circles
            ...List.generate(4, (index) {
              final angle = (index * 90) * (math.pi / 180);
              return Transform.translate(
                offset: Offset(
                  80 * math.cos(angle),
                  80 * math.sin(angle),
                ),
                child: Container(
                  width: 8,
                  height: 8,
                  decoration: const BoxDecoration(
                    color: Color(0xFFFF6B6B),
                    shape: BoxShape.circle,
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
