import 'dart:math';

void main() {
  Point a = Point(3, 6, 8);
  Point b = Point(1, 2, 5);

  print("Your result is: " + a.distanceTo(b).toString());
}

class Point {
  final double x;
  final double y;
  final double z;
  Point(this.x, this.y, this.z);
  factory Point.zero() {
    return Point(0, 0, 0);
  }
  factory Point.unit() {
    return Point(1, 1, 1);
  }
  double distanceTo(Point b) {
    double result;
    double xPos = this.x - b.x;
    double yPos = this.y - b.y;
    double zPos = this.z - b.z;
    result = sqrt(xPos * xPos + yPos * yPos + zPos * zPos);
    return result;
  }
}
