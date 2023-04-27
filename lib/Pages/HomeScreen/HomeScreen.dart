import 'package:circular_motion/circular_motion.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Circular Motion',
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Center(
          child: SizedBox(
            width: 390,
            height: 390,
            child: SafeArea(
              // Here's is the magic.
              child: CircularMotion(
                // behavior: HitTestBehavior.translucent,
                centerWidget: Container(
                  width: 90,
                  height: 85,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Center(
                    child: Text('center'),
                  ),
                ),
                children: List.generate(
                  4,
                  (context) {
                    return Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.primaries[context],
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text('$context'),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ),

    );
  }
}