
abstract class BaseBLoC<Event, State> {

  State _currentState;

  BaseBLoC() {
    initState();
  }

  ///Init state when bloc created
  void initState();

  ///Get current State
  State get state  {
    return _currentState;
  }

  ///set current State
  void setState(State state) {
    _currentState = state;
  }

  ///Dispatch a Event
  void dispatch(Event event);

}