// Initialize a record field in a class with an initializer
class Container {
  var y: Stored;
  var v;

  proc init() {
    y = new Stored(true);
    v = 10;

    super.init();
  }
}

record Stored {
  var x: bool;

  proc init(xVal) {
    x = xVal;

    super.init();
  }
}

var c = new Container();

writeln(c);

delete c;
