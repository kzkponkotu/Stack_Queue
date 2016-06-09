heap test;

void setup() {
  test = new heap(60);
  test.add_value(100);
  test.add_value(50);
  test.add_value(30);
  test.add_value(80);
  test.add_value(70);
  test.add_value(90);
  println(test.num);
  test.delete_value();
  println(test.num);
  test.delete_value();
  println(test.num);
  test.delete_value();
  println(test.num);
}