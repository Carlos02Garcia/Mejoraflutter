import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  TextEditingController nombreController = TextEditingController();
  TextEditingController apellidoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
                  filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                  child: Container(
                    width: 350,
                    height: 500,
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(217, 112, 79, 068).withOpacity(0.5),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Texto centrado en la parte superior
                        Text(
                          'Fast Food',
                          style: TextStyle( fontFamily: 'KdamThmorPro',
                            color: Colors.white,
                            fontSize: 50,
                          ),
                        ),
                        SizedBox(height: 20), // Ajusta según tus necesidades
                        TextField(
                          controller: nombreController,
                          style: TextStyle(color: Colors.white,fontFamily: 'DancingScript'),
                          decoration: InputDecoration(
                            labelText: 'Nombre',
                            labelStyle: TextStyle(color: Colors.white, fontFamily: 'DancingScript'),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        TextField(
                          controller: apellidoController,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            labelText: 'Apellido',
                            labelStyle: TextStyle(color: Colors.white,fontFamily: 'DancingScript'),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            String nombre = nombreController.text;
                            String apellido = apellidoController.text;
                            print('Nombre: $nombre, Apellido: $apellido');
                            // Puedes realizar acciones con los datos ingresados
                          },
                          child: Text('Guardar'),
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
