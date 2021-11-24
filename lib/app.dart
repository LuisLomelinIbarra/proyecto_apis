// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_constructors_in_immutables, avoid_print, deprecated_member_use

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'menu.dart';

class Register extends StatefulWidget {
  Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  late String _email;
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
                      onPressed: () {},
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    ElevatedButton(
                      child: Text(
                        "Iniciar Sesión",
                        style: TextStyle(fontFamily: 'Anton', fontSize: 15.0),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                    ),
                  ]),
              Divider(
                height: 20.0,
              ),
              TextField(
                enableInteractiveSelection: false,
                textCapitalization: TextCapitalization.characters,
                decoration: InputDecoration(
                    hintText: 'Ingresa tu correo',
                    labelText: 'EMAILL',
                    suffixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
                onSubmitted: (valor) {
                  _email = valor;
                  print('El correo es $_email');
                },
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
                  child: Text('Registrarse',
                      style: TextStyle(
                          color: Colors.black45,
                          fontSize: 30.0,
                          fontFamily: 'Anton')),
                  color: Colors.cyan.shade800,
                  onPressed: () {
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
