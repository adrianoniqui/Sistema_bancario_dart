//importacion absoluta de 2 clases para crear clentas
import 'package:dart_application_1/models/Cuenta.dart';
import 'package:dart_application_1/models/Cliente.dart';

class CuentaController {
  //lista dinamica para cuentas
  List<Cuenta> cuentas = [];

  void agregarCuenta(int numeroCuenta, double saldoInicial, Cliente titular) {
    var nuevaCuenta = Cuenta(numeroCuenta: numeroCuenta, saldo: saldoInicial, titular: titular);
    cuentas.add(nuevaCuenta);
    print('Cuenta agregada: $nuevaCuenta');
  }
  // buscar cuenta
  Cuenta? buscarCuenta(int numeroCuenta) {
    return cuentas.firstWhere((cuenta) => cuenta.numeroCuenta == numeroCuenta);
  }
  //realizamos un deposito de un cuenta a otra y usamos la funcion buscarCuenta
  void realizarDeposito(int numeroCuenta, double cantidad) {
    var cuenta = buscarCuenta(numeroCuenta);
    if (cuenta == null) {
      print('Cuenta no encontrada');
      return;
    }
    if (cantidad <= 0) {
      print('La cantidad a depositar debe ser positiva');
      return;
    }
    cuenta.depositar(cantidad);
    print('Depósito de $cantidad realizado en la cuenta $numeroCuenta. Nuevo saldo: ${cuenta.saldo}');
  }

  void realizarRetiro(int numeroCuenta, double cantidad) {
    var cuenta = buscarCuenta(numeroCuenta);
    if (cuenta == null) {
      print('Cuenta no encontrada');
      return;
    }
    if (!cuenta.retirar(cantidad)) {
      print('Error al realizar el retiro');
    }
  }
  
  
}
