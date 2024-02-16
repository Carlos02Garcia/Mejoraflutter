import 'dart:ui';
import 'package:flumejoralogin/interfaz/pagina2.dart';
import 'package:flumejoralogin/interfaz/principal.dart';
import 'package:flumejoralogin/interfaz/registrar_menu.dart';
import 'package:flutter/material.dart';

class HomeInicio extends StatelessWidget {
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
                  image: AssetImage('assets/image/fondo1.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  // Otras imágenes o widgets que quieras agregar arriba de la imagen de fondo
                  // ...
                  // Nueva imagen justo debajo de la imagen de fondo
                  // Resto del contenido
                  Center(
                    child: ClipRect(
                      // ... (código restante)
                    ),
                  ),
                ],
              ),
            ),
            // Imagen adicional centrada en la parte superior
            Positioned(
              bottom: 25, // Ajusta la posición vertical para colocar en la parte inferior
              left: 50,
              right: 50,
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      String email = emailController.text;
                      String password = passwordController.text;
                      print('E-mail: $email, Contraseña: $password');

                      // Navegar a una nueva pantalla
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Principal(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                      backgroundColor: Color.fromARGB(255, 181, 17, 27),
                    ),
                    child: Text('Login', style: TextStyle(fontFamily: 'BarlowSemiCondensed',fontSize: 50, color: Colors.white)),
                  ),
                  SizedBox(height: 5), // Espaciado entre el botón y el texto
                  GestureDetector(
                    onTap: () {
                      // Lógica para navegar a otra página al hacer clic en el texto
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Pagina2(), // Reemplaza "OtraPagina" con el nombre de tu página
                        ),
                      );
                    },
                    child: Text(
                      'No tienes Cuenta?',
                      style: TextStyle(fontFamily: 'BarlowSemiCondensed', fontSize: 24, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
