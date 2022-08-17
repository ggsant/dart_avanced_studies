import 'dart:collection';

abstract class BrainBehaviour {
  final Queue<dynamic> _mind = Queue();

  int capacity();

  void store(value) {
    final memoryIsFull = _mind.length > 100;
    if (memoryIsFull) {
      _mind.removeLast();
    }

    _mind.addLast(value);
  }

  void reset() {
    _mind.clear();
  }
}

class LongTermMemory extends BrainBehaviour {
  @override
  int capacity() => 100;
}

class ShortTermMemory extends BrainBehaviour {
  @override
  int capacity() => 40;
}
