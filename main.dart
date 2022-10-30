import 'dart:async';

void main(){
  ////////////////////////////// Học Stream
  // C1
  // Future<int> data = Future.delayed(Duration(seconds: 2),()=>1);
  //
  // Stream<int> stream = Stream.fromFuture(data);
  //
  // stream.listen((event) {print(event);});

  // C2
  // var data = Iterable.generate(10,(index) => index*2);
  //
  // Stream stream = Stream.fromIterable(data);
  //
  // stream.listen((event) {print(event.toString());
  // });

  // //C3
  // Stream stream = Stream.periodic(Duration(seconds: 1),(value){
  //   return value;
  //
  // }).asBroadcastStream();
  // // .asBroadcastStream() là dùng để nghe nhiều dữ liệu
  // stream.take(10).listen((event) {
  //   print("$event Location");
  //   }
  // );
  // stream.take(10).listen((event) {
  //   print("Location $event");
  // });

  //C4 Dùng để lắng nghe dữ liệu và muốn dừng ở giây nào thì dừng muốn chạy tiếp thì chạy
  // Stream stream = Stream.periodic(Duration(seconds: 1),(value){
  //   return value;
  //
  // }).asBroadcastStream();
  // // .asBroadcastStream() là dùng để nghe nhiều dữ liệu
  // var subscription =  stream.listen((event) {
  //   print("Location $event");
  // });
  //
  // Future.delayed(Duration(seconds: 4),(){
  //   //Dùng subscription.pause() thì tới giây thứ 4 nó dừng
  //   subscription.pause();
  //   // Dùng subscription.resume() thì tới giây thứ 4 nó tiếp tục chạy
  //   //subscription.resume();
  // });

  // C5 Quan trọng dùng StreamController (Dùng để làm việc với Api( gọi Api))
  StreamController<int> streamController = StreamController();
  // streamController.sink nghĩa là hàm sink này đẩy dữ liệu vào bên trong StreamController
  streamController.sink.add(123);
  streamController.sink.add(456);
  streamController.sink.add(789);

  // muốn lắng nghe dữ liệu thì dùng streamController.stream là lấy dữ liệu ra
  streamController.stream.listen((event) {
    print(event.toString());
  });


}




