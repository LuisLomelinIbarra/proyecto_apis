// ignore_for_file: deprecated_member_use

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:timer/MeditationList.dart';
import 'package:timer/menu.dart';
import 'app.dart';

class Login extends StatelessWidget {
  late String _usuario;
  late String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 100.0),
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/img/punto_blanco.png',
                  width: 350, height: 350),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    ElevatedButton(
                      child: Text(
                        "Registro",
                        style: TextStyle(fontFamily: 'Anton', fontSize: 15.0),
                      ),
                      onPressed: () {
                        Navigator.pop(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Register()));
                      },
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    ElevatedButton(
                      child: Text(
                        "Iniciar Sesión",
                        style: TextStyle(fontFamily: 'Anton', fontSize: 15.0),
                      ),
                      onPressed: () {},
                    ),
                  ]),
              Divider(
                height: 20.0,
              ),
              Divider(
                height: 18.0,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Ingresa tu nombre de usuario',
                    labelText: 'USUARIO',
                    suffixIcon: Icon(Icons.verified_user),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
                onSubmitted: (valor) {
                  _usuario = valor;
                  print('El nombre es $_usuario');
                },
              ),
              Divider(
                height: 18.0,
              ),
              TextField(
                enableInteractiveSelection: false,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Ingresa tu contraseña',
                    labelText: 'CONTRASEÑA',
                    suffixIcon: Icon(Icons.lock_outline),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
                onSubmitted: (valor) {
                  _password = valor;
                  print('La contraseña es $_password');
                },
              ),
              Divider(
                height: 15.0,
              ),
              SizedBox(
                width: double.infinity,
                child: RaisedButton(
                  hoverColor: Colors.lightBlue,
                  child: Text('Ingresar',
                      style: TextStyle(
                          color: Colors.black45,
                          fontSize: 30.0,
                          fontFamily: 'Anton')),
                  color: Colors.cyan.shade800,
                  onPressed: () {
                    print('Diste clic');
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MenuPage()));
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
