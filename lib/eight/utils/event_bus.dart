
typedef void EventCallback(arg);

var bus = EventBus();

class EventBus {

  EventBus._internal();

  static EventBus _singleton = new EventBus._internal();

  factory EventBus() => _singleton;

  var _emp = Map<Object, List<EventCallback>>();

  void on(eventName, EventCallback callback) {
    if (eventName == null || callback == null) return;
    _emp[eventName] ??= new List<EventCallback>();
    _emp[eventName].add(callback);
  }

  void off(eventName, EventCallback callback) {
    var list = _emp[eventName];
    if (eventName == null || list == null) return;
    if (callback == null) {
      _emp[eventName] = null;
    } else {
      list.remove(callback);
    }
  }


  void emit(eventName, [arg]) {
    var list = _emp[eventName];
    if (list == null) return;
    int len = list.length - 1;
    for (var i = len; i > 1; i--) {
      list[i](arg);
    }
  }



}