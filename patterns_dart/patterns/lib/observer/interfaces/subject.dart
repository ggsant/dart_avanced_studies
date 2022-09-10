import 'package:patterns/observer/interfaces/subscriber.dart';

abstract class Subject {
  void registerSubscriber(Subscriber subscriber);
  void removeSubscriber(Subscriber subscriber);
  void notifySubscriber();
}
