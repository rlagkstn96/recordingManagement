import 'dart:ui';
import 'package:flutter/material.dart';

class FloorPlanCreator extends StatefulWidget {
  final Function(List<Offset>) onFloorPlanCreated;

  FloorPlanCreator({required this.onFloorPlanCreated});

  @override
  _FloorPlanCreatorState createState() => _FloorPlanCreatorState();
}

class _FloorPlanCreatorState extends State<FloorPlanCreator> {
  List<Offset> _points = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: GestureDetector(
        onPanUpdate: (details) {
          setState(() {
            _points = List.from(_points)..add(details.localPosition);
          });
        },
        onPanEnd: (details) {
          widget.onFloorPlanCreated(_points);
          setState(() => _points = []);
        },
        child: CustomPaint(
          painter: FloorPlanPainter(points: _points),
          size: Size.infinite,
        ),
      ),
    );
  }
}

class FloorPlanPainter extends CustomPainter {
  final List<Offset> points;

  FloorPlanPainter({required this.points});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 3.0
      ..strokeCap = StrokeCap.round;

    for (var i = 0; i < points.length - 1; i++) {
      if (points[i] != null && points[i + 1] != null) {
        canvas.drawLine(points[i], points[i + 1], paint);
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
