import 'dart:core';

abstract class TransportStrategy {
  Ticket book({
    required String ticketID,
    required String passengerName,
    required State origin,
    required State destination,
  });

  double calculateTicketPrice({
    required State origin,
    required State destination,
  });
}

final class AirplaneTransport extends TransportStrategy {
  @override
  Ticket book({
    required String ticketID,
    required String passengerName,
    required State origin,
    required State destination,
  }) {
    final price = calculateTicketPrice(origin: origin, destination: destination);

    return Ticket(
      ticketId: ticketID,
      passengerName: passengerName,
      origin: origin,
      destination: destination,
      transport: Transport.airplane,
      price: price,
    );
  }

  @override
  double calculateTicketPrice({
    required State origin,
    required State destination,
  }) {
    final distance = origin.distance(to: destination) ?? 0.0;
    final transportFactor = 0.3;
    final tax = 100.0;
    return (distance * transportFactor) + tax;
  }
}

final class TrainTransport extends TransportStrategy {
  @override
  Ticket book({
    required String ticketID,
    required String passengerName,
    required State origin,
    required State destination,
  }) {
    final price = calculateTicketPrice(origin: origin, destination: destination);

    return Ticket(
      ticketId: ticketID,
      passengerName: passengerName,
      origin: origin,
      destination: destination,
      transport: Transport.train,
      price: price,
    );
  }

  @override
  double calculateTicketPrice({
    required State origin,
    required State destination,
  }) {
    final distance = origin.distance(to: destination) ?? 0.0;
    final transportFactor = 0.2;
    final tax = 50.0;
    return (distance * transportFactor) + tax;
  }
}

final class BusTransport extends TransportStrategy {
  @override
  Ticket book({
    required String ticketID,
    required String passengerName,
    required State origin,
    required State destination,
  }) {
    final price = calculateTicketPrice(origin: origin, destination: destination);

    return Ticket(
      ticketId: ticketID,
      passengerName: passengerName,
      origin: origin,
      destination: destination,
      transport: Transport.bus,
      price: price,
    );
  }

  @override
  double calculateTicketPrice({
    required State origin,
    required State destination,
  }) {
    final distance = origin.distance(to: destination) ?? 0.0;
    final transportFactor = 0.1;
    final tax = 30.0;
    return (distance * transportFactor) + tax;
  }
}

final class TransportContext {
  TransportStrategy? strategy;

  TransportContext();

  Ticket? executeBooking({
    required String ticketID,
    required String passengerName,
    required State origin,
    required State destination,
  }) {
    if (strategy != null) {
      return strategy?.book(
        ticketID: ticketID,
        passengerName: passengerName,
        origin: origin,
        destination: destination,
      );
    } else {
      print("Transport strategy not set.");
      return null;
    }
  }

  void setTransportStrategy(TransportStrategy strategy) {
    this.strategy = strategy;
  }
}

final class Ticket {
  final String ticketId;
  final String passengerName;
  final State origin;
  final State destination;
  final Transport transport;
  final double price;

  Ticket({
    required this.ticketId,
    required this.passengerName,
    required this.origin,
    required this.destination,
    required this.transport,
    required this.price,
  });

  String get successMessage => "A passagem foi reservada com sucesso. \n Id: $ticketId  \n Origem: ${origin.description}  \n Destino: ${destination.description}  \n Transporte: ${transport.description}  \n Passageiro: $passengerName \n Valor total: $price.";

  String get info => "Informações da passagem: \n Id: $ticketId  \n Origem: ${origin.description}  \n Destino: ${destination.description}  \n Transporte: ${transport.description}  \n Passageiro: $passengerName \n Valor total: $price.";
}

enum Transport {
  airplane("Avião"),
  train("Trem"),
  bus("Ônibus");

  final String description;

  const Transport(this.description);
}

enum State {
  alagoas('Alagoas'),
  bahia('Bahia'),
  ceara('Ceará'),
  rioDeJaneiro('Rio de Janeiro'),
  saoPaulo('São Paulo'),
  minasGerais('Minas Gerais');

  final String description;

  const State(this.description);

  static final Map<State, Map<State, double>> distances = {
    State.alagoas: {
      State.bahia: 875.0,
      State.ceara: 1037.0,
      State.rioDeJaneiro: 1950.0,
      State.saoPaulo: 2140.0,
      State.minasGerais: 1620.0,
    },
    State.bahia: {
      State.alagoas: 875.0,
      State.ceara: 1213.0,
      State.rioDeJaneiro: 1530.0,
      State.saoPaulo: 1942.0,
      State.minasGerais: 1370.0,
    },
    State.ceara: {
      State.alagoas: 1037.0,
      State.bahia: 1213.0,
      State.rioDeJaneiro: 2688.0,
      State.saoPaulo: 2760.0,
      State.minasGerais: 2230.0,
    },
    State.rioDeJaneiro: {
      State.alagoas: 1950.0,
      State.bahia: 1530.0,
      State.ceara: 2688.0,
      State.saoPaulo: 429.0,
      State.minasGerais: 339.0,
    },
    State.saoPaulo: {
      State.alagoas: 2140.0,
      State.bahia: 1942.0,
      State.ceara: 2760.0,
      State.rioDeJaneiro: 429.0,
      State.minasGerais: 586.0,
    },
    State.minasGerais: {
      State.alagoas: 1620.0,
      State.bahia: 1370.0,
      State.ceara: 2230.0,
      State.rioDeJaneiro: 339.0,
      State.saoPaulo: 586.0,
    }
  };

  double? distance({required State to}) {
    return distances[this]?[to];
  }
}

final class ReservationSystem {
  final Map<Transport, List<Ticket>> _reservations = {};
  final context = TransportContext();

  void addReservation({
    required Transport transport,
    required String ticketID,
    required String passengerName,
    required State origin,
    required State destination,
  }) {
    switch (transport) {
      case Transport.airplane:
        context.setTransportStrategy(AirplaneTransport());
        break;
      case Transport.bus:
        context.setTransportStrategy(BusTransport());
        break;
      case Transport.train:
        context.setTransportStrategy(TrainTransport());
        break;
    }

    final newTicket = context.executeBooking(
      ticketID: ticketID,
      passengerName: passengerName,
      origin: origin,
      destination: destination,
    );

    _reservations.putIfAbsent(transport, () => []);

    if (newTicket != null) {
      _reservations[transport]!.add(newTicket);
      print(newTicket.successMessage);
    }
  }

  void listAllReservations() {
    _reservations.forEach((transport, reservationList) {
      print('${transport.name} reservations:');
      for (var reservation in reservationList) {
        print(reservation.info);
      }
    });
  }

  void searchReservations(Transport transport) {
    final reservationList = _reservations[transport];
    if (reservationList != null && reservationList.isNotEmpty) {
      print('${transport.name} reservations:');
      for (var reservation in reservationList) {
        print(reservation.info);
      }
    } else {
      print('No reservations found for ${transport.name}.');
    }
  }
}
