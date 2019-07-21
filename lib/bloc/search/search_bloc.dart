import 'package:flutter/foundation.dart';
import 'package:flutter_shopping_demo/bloc/base/base_bloc.dart';

import 'search_event.dart';
import 'search_state.dart';

class SearchBloc extends BaseBLoC<SearchEvent, SearchState> with ChangeNotifier {
  @override
  void dispatch(SearchEvent event) {
    if (event is SearchKeyword) {

    } else if (event is SearchEventFetchHistory) {
      setState(SearHistoryFetching());
      notifyListeners();
      SearHistory searchHistory = SearHistory(
        keyWords: ['vinsmart', 'trà xanh', 'mango'],
        trending: ['vinsmart', 'trà xanh', 'mango', 'phone', 'note 9'],
      );
      setState(searchHistory);
      notifyListeners();
    }
  }

  @override
  void initState() {
    dispatch(SearchEventFetchHistory());
  }

}