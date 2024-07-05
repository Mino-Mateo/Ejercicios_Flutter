// ignore_for_file: file_names, no_leading_underscores_for_local_identifiers, unused_local_variable
import 'package:flutter/material.dart';
import 'package:new_app/view/secondPage.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Iniciar Sesión",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              const SizedBox(
                height: 50,
              ),
              loginForm(context),
            ],
          ),
        ),
      ),
    );
  }
}

Widget loginForm(BuildContext context) {
  final GlobalKey<FormState> _loginkey = GlobalKey<FormState>();
  final TextEditingController _mailcontroller = TextEditingController();
  final TextEditingController _passcontroller = TextEditingController();

  const String email = "enner_valestresv@gmail.com";
  const String password = "Duele99";

  return Container(
    child: Column(
      children: [
        Form(
            key: _loginkey,
            child: Column(
              children: [
                //Correo
                TextFormField(
                  controller: _mailcontroller,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Campo obligatorio";
                    } else if (!value.contains("@")) {
                      return "Formato de correo inválido";
                    } else if (value != email) {
                      return "Correo inválido";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    labelText: "Correo",
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                //Contraseña
                TextFormField(
                  controller: _passcontroller,
                  decoration: const InputDecoration(labelText: "Contraseña"),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Campo obligatorio";
                    } else if (value != password) {
                      return "Clave inválida";
                    }
                    return null;
                  },
                ),
              ],
            )),
        const SizedBox(
          height: 50,
        ),
        ElevatedButton(
            onPressed: (){
              if (_loginkey.currentState!.validate()) {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Secondpage(data: "Bienvenido patojo!")));
              }
            },
            child: const Text("Iniciar Sesión"))
      ],
    ),
  );
}
