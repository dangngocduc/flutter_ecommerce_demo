abstract class Product {

  String getId();
}


class TestProduct extends Product {
  String id;

  TestProduct({this.id});
  @override
  String getId() {
    return id;
  }
}