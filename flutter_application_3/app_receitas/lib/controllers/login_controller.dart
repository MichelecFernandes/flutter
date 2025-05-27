class LoginController{
  bool login(String usuario, String senha){
    if(usuario == 'admin' && senha == '123456'){
      return true;
    }else{
      return false;
    }
  }
}