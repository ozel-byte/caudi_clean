class Username {
  String username = "";
  int puntos = 0;
  String avatar = "";
  String genero = "";
  // ignore: deprecated_member_use
  List<String> tareasTermiandas = [];

  Username(String _username, int _puntos, String _avatar, String _genero) {
    username = _username;
    puntos = _puntos;
    avatar = _avatar;
    genero = _genero;
  }

  get getUsername {
    return username;
  }

  set countpuntos(int _puntos) {
    puntos = _puntos;
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
