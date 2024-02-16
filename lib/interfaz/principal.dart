import 'dart:ui';
import 'package:flumejoralogin/interfaz/pagina2.dart';
import 'package:flumejoralogin/interfaz/registrar_menu.dart';
import 'package:flutter/material.dart';

class Principal extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            // Fondo de la imagen
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image/imagenfondo.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Contenedor difuminado encima de la imagen
            Center(
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                  child: Container(
                    width: 350,
                    height: 465,
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(217, 225, 90, 45).withOpacity(0.5),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Texto centrado en la parte superior
                        Text(
                          'Welcome to Fast Food',
                          style: TextStyle( fontFamily: 'Mogra',
                            color: Color.fromARGB(255, 40, 11, 11),
                            fontSize: 30,
                          ),
                        ),
                        SizedBox(height: 20), // Ajusta según tus necesidades
                        TextField(
                          controller: emailController,
                          style: TextStyle(color: const Color.fromARGB(255, 32, 11, 11)),
                          decoration: InputDecoration(
                            labelText: 'E-mail',
                            labelStyle: TextStyle(color: const Color.fromARGB(255, 34, 11, 11).withOpacity(0.5), fontFamily:"IBMPlexSans", fontWeight: FontWeight.bold),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color.fromARGB(255, 16, 6, 6)),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        TextField(
                          controller: passwordController,
                          style: TextStyle(color: const Color.fromARGB(255, 40, 14, 14)),
                          decoration: InputDecoration(
                            labelText: '  Contraseña',
                            labelStyle: TextStyle(color: const Color.fromARGB(255, 30, 9, 9).withOpacity(0.5), fontFamily:"IBMPlexSans", fontWeight: FontWeight.bold),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color.fromARGB(255, 16, 6, 6)),
                            ),
                          ),
                        ),
                      SizedBox(height: 30),
               ElevatedButton(
                onPressed: () {
                  String email = emailController.text;
                  String password = passwordController.text;
                  print('E-mail: $email, Contraseña: $password');

                  // Navegar a una nueva pantalla
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>  Pagina2(), // Reemplaza SegundaPantalla con el nombre de tu próxima pantalla
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                  backgroundColor: Colors.red,
                ),
                child: Text('Login', style: TextStyle(fontSize: 30, color: Colors.white, fontFamily: "BarlowSemiCondensed")),
              ),
                        SizedBox(height: 30), // Ajusta la distancia según tus necesidades
Text(
  '¿Olvidaste la contraseña?',
  style: TextStyle(color: Color.fromARGB(255, 31, 10, 10).withOpacity(0.5), fontSize: 25, fontFamily:"BarlowSemiCondensed", fontWeight: FontWeight.bold),
),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            // Imagen adicional centrada en la parte superior
            Positioned(
              top: 10, // Ajusta la posición vertical según tus necesidades
              left: 134,
              right: 134,
              child: Container(
                  width: 10, // Ajusta el ancho según tus necesidades
                  height: 195, // Ajusta la altura según tus necesidades
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    image: DecorationImage(image: AssetImage('assets/image/imagen.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}