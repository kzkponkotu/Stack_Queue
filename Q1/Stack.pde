class Stack{
  int size;
  int[] item;
  int num;
  
  Stack(int _size){
    size = _size;
    item = new int[size];
    num = size-1;
  }
  
  int pop(){
    num++;    
    int value = item[num];
    item[num] = 0;
    return value;
  }
  
  void push(int value){
    item[num] = value;
    num--;
  }
}