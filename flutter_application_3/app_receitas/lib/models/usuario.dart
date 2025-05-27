class Usuario {

  static final Usuario instance = Usuario();

  String usuario = '';

  void setUsuario(String usuario){
    this.usuario = usuario;
  }

  String getUsuario(){
    return usuario;
  }

}