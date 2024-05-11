//importamos de manera absoluta y no relativa la clase persona porque heredaremos sus atributos y metodos
import 'package:dart_application_1/models/Persona.dart';
//clase cliente hereda de persona
class Cliente extends Persona {
  double _saldoCuenta;
//constructor que pide los atributos de la clase padre.
  Cliente({
    required super.nombre,
    required super.direccion,
    required super.telefono,
    double saldoCuenta = 0.0,
  }) : _saldoCuenta = saldoCuenta;

  // Getter para saldoCuenta
  double get saldoCuenta => _saldoCuenta;

  // Setter para saldoCuenta
  set saldoCuenta(double nuevoSaldo) {
    _saldoCuenta = nuevoSaldo;
  }

  @override
  String toString() {
    return '${super.toString()}, saldoCuenta: $_saldoCuenta';
  }
}

