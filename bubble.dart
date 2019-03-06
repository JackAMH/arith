/*
*冒泡排序：
*使用语言：Dart
*从键盘上输入10个整数，用冒泡法对这10个数进行排序（由小到大
*/
void bubble(List<int> arr){
  print("数组大小${arr.length}:$arr");
  //遍历比较次数
  for (int i = 0; i < arr.length -1; i++) {
    print("第${i+1}轮开始冒泡");
    var isSorted = true;
    //具体一轮
    for(int j = 0;j <= arr.length - i -2;j++){
      if(arr[j] > arr[j + 1]){
        //大数交换
        int tmp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = tmp;
        isSorted = false;
      }
    }
    if(isSorted){
      break;
    }
  }
  print("冒泡排序结束");
}
//延伸：Dart中
//const修饰的变量不仅该变量自身引用不可变，其所指向的数组类型也是const类型；
// CONST也可以修饰常量，如const[1,2,3]
//final修饰的变量该变量自身引用不可变，其所指向的数组类型是可增删改的；
//final不可修饰常量
void main() {
  final  arr = [31,21,10,15,9,19,8,21,0,31,3,9];
  bubble(arr);
  print("$arr");
}