import 'package:flutter_shopping_demo/data/models/product.dart';

abstract class SearchState {}

class SearHistoryFetching extends SearchState {}

class SearHistory extends SearchState {
  List<String> keyWords;
  List<String> trending;

  SearHistory({this.keyWords = const [], this.trending = const []});
}


class SearchLoading extends SearchState {}


class SearchSuccess extends SearchState{
  List<Product> products;
  SearchSuccess({this.products});
}