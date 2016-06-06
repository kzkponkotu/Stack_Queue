Queue test;

void setup() {
  test = new Queue(20);
  for (int i=0; i<10; i++) {
    test.push(i);
  }
  for (int i=0; i<10; i++) {
    println(test.pop());
  }
  for (int i=0; i<20; i++) {
    test.push(i);
  }
  for (int i=0; i<20; i++) {
    println(test.pop());
  }    
  size(640, 480);
}