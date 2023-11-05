class Point {
  double x = 0;
  double y = 0;

  Point(double x, double y) {
    // See initializing formal parameters for a better way
    // to initialize instance variables.
    this.x = x;
    this.y = y;
  }
  Point.fromJson(Map<String, double> map )
      : x = map['x']??0,
        y = map['y']??0;
}
class ImmutablePoint {
  static const ImmutablePoint origin = ImmutablePoint(0, 0);

  final double x, y;

  const ImmutablePoint(this.x, this.y);
}
void main() {


  var p = Point(2, 2);

// Get the value of y.
  assert(p.y == 2);


  var p1 = Point(2, 2);
  var p2 = Point.fromJson({'x': 1, 'y': 2});


  var p12 = new Point(2, 2);
  var p22 = new Point.fromJson({'x': 1, 'y': 2});


  var a = const ImmutablePoint(1, 2);
  var b = const ImmutablePoint(1, 2);

  assert(identical(a, b)); // They are the same instance!

  const pointAndLine = {
    'point': [ImmutablePoint(0, 0)],
    'line': [ImmutablePoint(1, 10), ImmutablePoint(-2, 11)],

  };
  print (pointAndLine);
}
