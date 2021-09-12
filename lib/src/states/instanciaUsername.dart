import 'package:caudiclean/src/model/username.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class InstanciaUsernameState extends StateNotifier<Username> {
  InstanciaUsernameState() : super(Username());

  set agregarUsername(String username) => state.setUsername = username;
  set agregarAvatar(String avatar) => state.setAvatar = avatar;
  set agregarGnero(String genero) => state.setGenero = genero;
  set agregarPuntos(int value) => state.countpuntos = value;

  String get usernameValue => state.getUsername;
  String get avatarValue => state.getAvatar;
  String get generoValue => state.genero;
  int get puntosValue => state.getPuntos;
}
