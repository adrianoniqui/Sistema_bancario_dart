// Importación absoluta
import 'package:dart_application_1/models/Cliente.dart';

class Cuenta {
  int _numeroCuenta;
  double _saldo;
  Cliente _titular;

  // Corrección en el constructor: se deben usar los nombres de las variables de instancia
  Cuenta({required int numeroCuenta, required double saldo, required Cliente titular})
      : _numeroCuenta = numeroCuenta,
        _saldo = saldo,
        _titular = titular;

  //metodo depositar a uno mismo
void depositar(double cantidad) {
    if (cantidad > 0) {
      _saldo += cantidad; // 
      print('Depósito realizado: $cantidad, Nuevo saldo: $_saldo');
    } else {
      print('Error: La cantidad a depositar debe ser positiva');
    }
  }
  //metodo retirar dinero a uno mismo 
  bool retirar(double cantidad) {
    if (cantidad > 0 && cantidad <= _saldo) { 
      _saldo -= cantidad;
      print('Retiro realizado: $cantidad, Nuevo saldo: $_saldo');
      return true;
    } else {
      print('Error: Fondos insuficientes o cantidad inválida');
      return false;
    }
  }
  
   int get numeroCuenta => this._numeroCuenta;

  set numeroCuenta(int value) => this._numeroCuenta = value;

  get saldo => this._saldo;

  set saldo( value) => this._saldo = value;

  @override
  String toString() {
    // Corrección: se deben usar las variables de instancia con guión bajo
    return 'Cuenta{numeroCuenta: $_numeroCuenta, saldo: $_saldo, titular: $_titular}';
  }
}
