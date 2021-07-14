import 'package:mobx/mobx.dart';
part 'login_store.g.dart';

class LoginStore = _LoginStoreBase with _$LoginStore;

abstract class _LoginStoreBase with Store {
  _LoginStoreBase() {
    autorun((_) {
      print(isFormValid);
    });
  }
  @observable
  String _email = "";

  @action
  void setEmail(String email) {
    this._email = email;
  }

  String get email => _email;

  @observable
  String _senha = "";

  void setSenha(String senha) {
    this._senha = senha;
  }

  String get senha => _senha;

  @computed
  bool get isPasswordValid => _senha.length > 8;

  @computed
  bool get isEmailValid => _email.length > 6;

  bool get isFormValid => isEmailValid && isPasswordValid;

  @observable
  bool _isObscureSenha = true;

  bool get isObscureSenha => _isObscureSenha;

  @action
  void toogleObscureSenha() {
    _isObscureSenha = !_isObscureSenha;
  }

  @observable
  bool _loading = false;
  bool get loading => _loading;

  @action
  Future<void> login() async {
    _loading = true;
    await Future.delayed(Duration(seconds: 4));
    _loading = false;
  }

  @computed
  dynamic get loginPressed =>
      (isPasswordValid && isEmailValid && !loading) ? login : null;
}
