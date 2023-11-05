/////////////////////////////////////////////////////////
// TODO Constructor
class Point {
  double x = 0;
  double y = 0;

  Point(double x, double y) {
    // See initializing formal parameters for a better way
    // to initialize instance variables.
    this.x = x;
    this.y = y;
  }
}


/////////////////////////////////////////////////////////
// TODO Initializing formal parameters
class Point2 {
  final double x;
  final double y;

  // Sets the x and y instance variables
  // before the constructor body runs.
  Point2(this.x, this.y);
}


/////////////////////////////////////////////////////////
// TODO Named constructors
// to implement multiple constructors for a class or to provide extra clarity
const double xOrigin = 0;
const double yOrigin = 0;

class Point3 {
  final double x;
  final double y;

  Point3(this.x, this.y);

  // Named constructor
  Point3.origin()
      : x = xOrigin,
        y = yOrigin;
}

/////////////////////////////////////////////////////////
// TODO Invoking a non-default superclass constructor
class Person {
  String? firstName;

  Person.fromJson(Map data) {
    print('in Person');
  }
}

class Employee extends Person {
  // Person does not have a default constructor;
  // you must call super.fromJson().
  Employee.fromJson(super.data) : super.fromJson() {
    print('in Employee');
  }
  Employee(Map data): super.fromJson(data){

  }

}
/////////////////////////////////////////////////////////
// TODO Super parameters
// To avoid having to manually pass each parameter into the super invocation of a constructor,
class Vector2d {
  final double x;
  final double y;

  Vector2d(this.x, this.y);

}

class Vector3d extends Vector2d {
  final double z;

  // Forward the x and y parameters to the default super constructor like:
  // Vector3d(final double x, final double y, this.z) : super(x, y);
  Vector3d(super.x, super.y, this.z);
}

class Vector2d2 {
  final double x;
  final double y;

  Vector2d2.named({required this.x, required this.y});

}

class Vector3d2 extends Vector2d2 {
  final double z;

  // Forward the y parameter to the named super constructor like:
  // Vector3d.yzPlane({required double y, required this.z})
  //       : super.named(x: 0, y: y);
  Vector3d2.yzPlane({required super.y, required this.z}) : super.named(x: 0);
}

void main() {
  var v2d = Vector2d2.named(x: 1, y: 2);
  var v3d = Vector3d2.yzPlane(y: 3, z: 4);
}