import 'package:patterns/strategy/transport_strategy.dart';

void main() {
  final reservationSystem = ReservationSystem();

  reservationSystem.addReservation(
    transport: Transport.airplane,
    ticketID: "A123",
    passengerName: "Gabriela Santos",
    origin: State.alagoas,
    destination: State.saoPaulo,
  );
  reservationSystem.addReservation(
    transport: Transport.train,
    ticketID: "T456",
    passengerName: "Rafaela Aparecida",
    origin: State.ceara,
    destination: State.rioDeJaneiro,
  );
  reservationSystem.addReservation(
    transport: Transport.bus,
    ticketID: "B789",
    passengerName: "Guilherme Lopes",
    origin: State.bahia,
    destination: State.minasGerais,
  );

  print("\nList all reservations:");
  reservationSystem.listAllReservations();

  print("\nSearch for airplane reservations:");
  reservationSystem.searchReservations(Transport.airplane);
}
