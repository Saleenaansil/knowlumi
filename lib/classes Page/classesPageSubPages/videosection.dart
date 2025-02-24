import 'package:flutter/material.dart';
import '../../customwidget/customText.dart';

class Videosection extends StatefulWidget {
  const Videosection({super.key});

  @override
  State<Videosection> createState() => _VideosectionState();
}

class _VideosectionState extends State<Videosection> {
  double _currentPosition = 0.0; // For video progress
  final double _videoDuration = 120.0; // Example: 120 seconds (2 mins)

  // Format time in mm:ss
  String _formatTime(double seconds) {
    int min = seconds ~/ 60;
    int sec = seconds.toInt() % 60;
    return "${min.toString().padLeft(2, '0')}:${sec.toString().padLeft(2, '0')}";
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background Gradient Container
        Container(
          width: double.infinity,
          height: 260,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff000000), Color(0xff316A69)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.65, 1.0],
            ),
          ),
        ),

        // Main Character Image
        Positioned(
          left: 129,
          top: 15,
          bottom: 0,
          child: Image.asset(
            "asset/shotman.png",
            fit: BoxFit.contain,
          ),
        ),
        Positioned(
          top: 30,
          left: 20,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Back Arrow Button
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.black),
                  onPressed: () {
                    Navigator.pop(context); // Back navigation
                  },
                ),
              ),

              const SizedBox(width: 10), // Space between arrow and title

              // Video Title
              const CustomText(
                text: "Concept of co-operation Part 1",
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ],
          ),
        ),

// ✅ Video Control Bar
        Positioned(
          top: 120, // Adjust based on design
          left: 77,
          child: Container(
            width: 212,
            height: 48,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Reverse 10s Button
                IconButton(
                  icon: const Icon(Icons.replay_10, color: Colors.white),
                  onPressed: () {
                    setState(() {
                      _currentPosition =
                          (_currentPosition - 10).clamp(0, _videoDuration);
                    });
                  },
                ),

                // Play Button
                IconButton(
                  icon: const Icon(Icons.play_arrow, color: Colors.white),
                  onPressed: () {
                    // Implement Play/Pause logic
                  },
                ),

                // Forward 10s Button
                IconButton(
                  icon: const Icon(Icons.forward_10, color: Colors.white),
                  onPressed: () {
                    setState(() {
                      _currentPosition =
                          (_currentPosition + 10).clamp(0, _videoDuration);
                    });
                  },
                ),
              ],
            ),
          ),
        ),

        // Video Progress Bar & Time
        Positioned(
          top: 200,
          left: 20,
          right: 20,
          child: Column(
            children: [
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  trackHeight: 2, // Slimmer slider track if needed
                  overlayShape: SliderComponentShape
                      .noOverlay, // Remove extra touch ripple
                ),
                child: Slider(
                  value: _currentPosition,
                  min: 0,
                  max: _videoDuration,
                  activeColor: Colors.white,
                  inactiveColor: Colors.grey,
                  onChanged: (value) {
                    setState(() {
                      _currentPosition = value;
                    });
                  },
                ),
              ),
              Transform.translate(
                offset:
                    const Offset(-290, -4), // Pulls time text closer to slider
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "${_currentPosition.toStringAsFixed(2)} / ${_videoDuration.toStringAsFixed(2)}",
                      style: const TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
