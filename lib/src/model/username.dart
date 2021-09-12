class Username {
  String username = "";
  int puntos = 0;
  String avatar = "";
  String genero = "";
  // ignore: deprecated_member_use
  List<String> tareasTermiandas = [];

  get getUsername {
    return username;
  }

  set setUsername(String name) {
    username = name;
  }

  set setAvatar(String _avatar) {
    avatar = _avatar;
  }

  set setGenero(String _genero) {
    genero = _genero;
  }

  set countpuntos(int _puntos) {
    puntos += _puntos;
  }

  int getPuntosRiver() {
    return getPuntos;
  }

  int get getPuntos {
    return this.puntos;
  }

  get getAvatar {
    return avatar;
  }

  get getGenero {
    return genero;
  }

  set setTareasTerminadas(String tarea) {
    tareasTermiandas.add(tarea);
  }

  get getTareas {
    return tareasTermiandas;
  }
}
