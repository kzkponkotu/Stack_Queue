class heap{
  int[] num;
  
  heap(int value){
    num = new int[2];
    num[1] = value;
  }
  
  void add_value(int value){
    num = append(num,value);
    int i = num.length-1;
    while(i>1){
      if(num[i] < num[i/2]){
        int tmp=num[i];
        num[i] = num[i/2];
        num[i/2] = tmp;
      }
      i = i/2;
    }
  }
  
  void delete_value(){
    num[1] = num[num.length-1];
    int[] num2 = new int[num.length-1];
    
    for(int j=0; j<num2.length; j++){
      num2[j] = num[j];
    }
    
    num = num2;
    
    int i = 1;
    int N = num.length-2;
    int c;
    while(2*i <= N){
      if(2*i+1 <= N && num[2*i] > num[2*i+1])c=2*i+1;
      else c=2*i;
      if(num[c]<num[i]){
        int tmp=num[i];
        num[i] = num[c];
        num[c] = tmp;
        i=c;
      }
    }
  }
  
}