// This test exercises inheriting from a generic class when the child does not
// use the generic field in its new field and the parent has a type field.
class Parent {
  type t;
  var x: t;

  proc init(xVal) {
    t = xVal.type;
    x = xVal;
    super.init();
  }
}

class Child : Parent {
  var y: int;

  proc init(yVal: int, xVal) {
    y = yVal;
    super.init(xVal);
  }
}

proc main() {
  var child = new Child(10, 11);
  writeln(child.type:string);
  writeln(child);
  delete child;
}
