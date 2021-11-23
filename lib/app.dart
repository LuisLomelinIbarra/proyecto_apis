// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_constructors_in_immutables, avoid_print, deprecated_member_use

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  late String _email;
  late String _usuario;
  late String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 30.0,
          vertical: 100.0
        ),
        children: <Widget> [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/punto_blanco.png', 
                width: 350, 
                height: 350
              ),
              Text(
                'Registro',
                style: TextStyle(
                  fontFamily: 'Anton',
                  fontSize: 20.0
                ),
              ),
              Divider(
                height: 20.0,
              ),
              TextField(
                enableInteractiveSelection: false,
                autofocus: true,
                textCapitalization: TextCapitalization.characters,
                decoration: InputDecoration(
                  hintText: 'Ingresa tu correo',
                  labelText: 'EMAIL',
                  suffixIcon: Icon(
                    Icons.email
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0) 
                  )
                ),
                onSubmitted: (valor){
                  _email=valor;
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
                  suffixIcon: Icon(
                    Icons.verified_user
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  )
                ),
                onSubmitted: (valor){
                  _usuario=valor;
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
                  suffixIcon: Icon(
                    Icons.lock_outline
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  )
                ),
                onSubmitted: (valor){
                  _password=valor;
                  print('La contraseña es $_password');
                },
              ),
              Divider(
                height: 15.0,
              ),
              SizedBox(
                width: double.infinity,
                child: FlatButton(
                  hoverColor: Colors.lightBlue,
                  child: Text(
                    'Registrarse',
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 30.0,
                      fontFamily: 'Anton'
                    )
                  ),
                  color: Colors.cyan.shade800,
                  onPressed: (){
                    print('Diste clic');
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