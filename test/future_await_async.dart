import 'package:test/test.dart';

void main(){
  test("testing async await and future", () async {
     var futureOrAsync = FutureAwaitAsync();

    print("starting mainMethod");
    // await futureOrAsync.futureMethod();
    futureOrAsync.asyncOrFuture();
    print("finished mainMethod");



  });
}

class FutureAwaitAsync {
  Future<void> futureMethod() async {
    print(">> starting futureMethod");
    await Future.delayed(Duration(seconds: 5));
    print(">> finished futureMethod");
  }

  void asyncMethod() async {
    print(">> starting asyncMethod");
    await Future.delayed(Duration(seconds: 5));
    print(">> finished asyncMethod");
  }

  void asyncOrFuture() async {
    print(">> starting asyncOrFuture");
    Future.delayed(Duration(seconds: 5));
    print(">> finished asyncOrFuture");
  }

  void syncMethod() {
    print(">> starting syncMethod");
    Future.delayed(Duration(seconds: 5));
    print(">> finished syncMethod");
  }
}