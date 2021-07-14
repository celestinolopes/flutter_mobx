import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx1/stores/login/login_store.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final loginStore = LoginStore();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(' '),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "LOGIN COM MOBX",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 40),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Observer(builder: (_) {
                    return TextField(
                      enabled: !loginStore.loading,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.account_circle,
                          color: Colors.purple,
                        ),
                        hintText: "Email",
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: InputBorder.none,
                      ),
                      onChanged: loginStore.setEmail,
                    );
                  }),
                  SizedBox(height: 5),
                  Observer(builder: (_) {
                    return TextField(
                      enabled: !loginStore.loading,
                      obscureText: loginStore.isObscureSenha,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.purple,
                        ),
                        hintText: "Senha",
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: InputBorder.none,
                        suffixIcon: IconButton(
                          onPressed: loginStore.toogleObscureSenha,
                          icon: Icon(loginStore.isObscureSenha
                              ? Icons.visibility_off
                              : Icons.visibility),
                        ),
                      ),
                      onChanged: loginStore.setSenha,
                    );
                  }),
                ],
              ),
            ),
            SizedBox(height: 20),
            Observer(builder: (_) {
              return Container(
                height: 50,
                width: 50,
                child: ElevatedButton(
                  onPressed: loginStore.loginPressed,
                  child: loginStore.loading
                      ? CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation(Colors.white),
                        )
                      : Text("Login"),
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
