import 'package:flutter/material.dart';

class Statics extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0, left: 30, right: 30),
      child: Container(
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(30)),
        child: CustomPaint(
          foregroundPainter: MyCustomPaint(),
          child: Row(
            children: <Widget>[
              Expanded(
                  child: Container(
                  decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomLeft: Radius.circular(30))),
                )
              ),
              Expanded(
                  child: Container(
                  decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          bottomRight: Radius.circular(30))),
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyCustomPaint extends CustomPainter{
  Paint _paint = Paint();
  @override
  void paint(Canvas canvas, Size size) {
    _paint.color = Colors.orange;

    var path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width / 2, 0);
    path.lineTo(size.width / 2 -30, size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawPath(path, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return null;
  }
  
}
