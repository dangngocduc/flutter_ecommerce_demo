abstract class SearchEvent {}


class SearchEventFetchHistory extends SearchEvent {}


class SearchKeyword extends SearchEvent {
  String keyWord;
  SearchKeyword({this.keyWord});
}