import 'dart:async';

void main(){
  //print("hello nam");

  // Future.delayed(Duration(seconds: 10),(){
  //   print("Time out 10");
  // });

  //////////////
  // Future<int> data = Future.delayed(Duration(seconds: 5),(){
  //   //return 1;
  //   throw Exception("Loi khong tim thay du lieu");
  // });
  //
  // data.then((value) => print(value))
  //     .catchError((error)=>print(error));
  ///////////////
  // Su dung Completer
  Future<int> data = tinhtong(5, 10);
  data.then((value) => print(value));




}



Future<int> tinhtong(int a, int b){
  Completer<int> completer2 = Completer();
  Future.delayed(Duration(seconds: 2),(){
    Future.delayed(Duration(seconds: 1),(){
      int c = a+b;
      completer2.complete(c);
    });
  });
  return completer2.future;
}

