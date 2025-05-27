import 'package:flutter/material.dart';

class TimeTabs extends StatefulWidget {
  const TimeTabs({super.key});

  @override
  State<TimeTabs> createState() => _TimeTabsState();
}

class _TimeTabsState extends State<TimeTabs> {
  int selectedIndex = 1;
  final List<String> tabs = ['YESTERDAY', 'TODAY', 'TOMORROW', 'WEEK', 'MONTH'];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          tabs.length,
          (index) => GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              margin: const EdgeInsets.only(right: 8),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: selectedIndex == index 
                      ? const Color(0xFF6B4EFF)
                      : Colors.transparent,
                    width: 2,
                  ),
                ),
              ),
              child: Text(
                tabs[index],
                style: TextStyle(
                  color: selectedIndex == index 
                    ? const Color(0xFF6B4EFF)
                    : Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
