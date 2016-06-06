class Queue{
  int size;
  int[] item;
  int head;
  int tail;  
  
  Queue(int _size){
    size = _size;
    item = new int[size];
    head=0;
    tail=0;
  }
  
  int pop(){
    tail++;
    if(tail-1 > size-1)tail=1;
    return item[tail-1];
  }
  
  void push(int value){
    item[head] = value;
    head++;
    if(head>size-1)head=0;
  }
}