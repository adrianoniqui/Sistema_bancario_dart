import 'package:dart_application_1/models/Cliente.dart';
import 'package:dart_application_1/controllers/CuentaController.dart';

void main() {
  // Crear una instancia del controlador de cuentas
  var cuentaController = CuentaController();

  // Crear un cliente
  var cliente = Cliente( nombre: 'Juan Perez', direccion: '123 Calle Principal', telefono: '555-1234');

  // Agregar una cuenta
  cuentaController.agregarCuenta(1001, 5000.0, cliente);

  // Realizar un depósito
  try {
    cuentaController.realizarDeposito(1001, 1500.0);
  } catch (e) {
    print(e);
  }

  // Intentar retirar
  try {
    cuentaController.realizarRetiro(1001, 3000.0);
  } catch (e) {
    print(e);
  }

  // Intentar retirar con error
  try {
    cuentaController.realizarRetiro(1001, 8000.0);  // Debería fallar por fondos insuficientes
  } catch (e) {
    print(e);
  }
}
