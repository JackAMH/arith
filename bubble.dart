/*
*冒泡排序是非常容易理解和实现，以从小到大排序举例：设数组长度为N。
*传统算法思想：
1．比较相邻的前后二个数据，如果前面数据大于后面的数据，就将二个数据交换。
2．这样对数组的第0个数据到N-1个数据进行一次遍历后，最大的一个数据就“沉”到数组第N-1个位置。
3．N=N-1，如果N不为0就重复前面二步，否则排序完成。
*优化：
使用语言：Dart
*冒泡排序：从键盘上输入10个整数，用冒泡法对这10个数进行排序（由小到大
*相比传统冒泡优化：通过 isSorted判断本轮中是否存在大数交换，不存在则排序结束
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