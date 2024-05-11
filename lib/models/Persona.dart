class Persona {
  //atributos privados
  String _nombre;
  String _direccion;
  String _telefono;
  // contructor
  Persona({ required String nombre, required String direccion, required String telefono})
      :
        _nombre = nombre,
        _direccion = direccion,
        _telefono = telefono;

  // Getters
  String get nombre => _nombre;
  String get direccion => _direccion;
  String get telefono => _telefono;

  // Setters


  set nombre(String nuevoNombre) {
    _nombre = nuevoNombre;
  }

  set direccion(String nuevaDireccion) {
    _direccion = nuevaDireccion;
  }

  set telefono(String nuevoTelefono) {
    _telefono = nuevoTelefono;
  }

  @override
  String toString() {
    return 'Persona{ nombre: $_nombre, dirección: $_direccion, teléfono: $_telefono}';
  }
}
