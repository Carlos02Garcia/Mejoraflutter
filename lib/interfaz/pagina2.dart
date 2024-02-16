import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flumejoralogin/interfaz/pagina3.dart';

class Pagina2 extends StatefulWidget {
  @override
  _Pagina2State createState() => _Pagina2State();
}

class _Pagina2State extends State<Pagina2> {
  String? selectedOption;
  TextEditingController nombreController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController celularController = TextEditingController();

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
            Positioned(
           top: 230, // Ajusta la posición vertical según tus necesidades para separar más el contenedor difuminado
           left: 20,
           right: 20,
          child: ClipRect(
           child: BackdropFilter(
             filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
               child: Container(
                    width: 400,
                    height: 550,
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
                          'Registrar Usuario',
                          style: TextStyle( fontFamily: 'Mogra',
                            color: Color.fromARGB(255, 40, 11, 11),
                            fontSize: 27,
                          ),
                        ),
                        SizedBox(height: 3.5), // Ajusta según tus necesidades
                        Container(
  width: 300, // Ajusta según tus necesidades
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20.0),
    color: Colors.red,
  ),
  child: DropdownButtonFormField<String>(
    value: selectedOption,
    onChanged: (String? newValue) {
      if (newValue != null) {
        setState(() {
          selectedOption = newValue;
        });

        if (newValue == 'Restaurante') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Pagina3(),
            ),
          );
        }
      }
    },
    decoration: InputDecoration(
      contentPadding: EdgeInsets.symmetric(horizontal: 25),
      hintText: 'Tipo',
      hintStyle: TextStyle(
        color: Colors.white,
        fontSize: 30.0,
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.transparent),
      ),
    ),
    style: TextStyle(
      color: Colors.white,
      fontSize: 16.0,
    ),
    icon: Icon(Icons.arrow_downward, color: const Color.fromARGB(255, 23, 21, 21)),
    elevation: 20,
    isExpanded: true,
    dropdownColor: Colors.red,
    items: <String>['Restaurante']
        .map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Center(
          child: Text(value,
            style: TextStyle(
              fontSize: 30.0,  // Ajusta el tamaño del texto según tus necesidades
              color: Colors.white,
         ),
         ),
        ),
      );
    }).toList(),
  ),
),
                        SizedBox(height: 10),
                        TextField(
                          controller: nombreController,
                          style: TextStyle(color: const Color.fromARGB(255, 32, 11, 11)),
                          decoration: InputDecoration(
                            labelText: 'Nombre',
                            labelStyle: TextStyle(color: const Color.fromARGB(255, 34, 11, 11).withOpacity(0.5), fontFamily:"IBMPlexSans", fontWeight: FontWeight.bold),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color.fromARGB(255, 16, 6, 6)),
                            ),
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
                        SizedBox(height: 20), // Ajusta según tus necesidades
                        TextField(
                          controller: passwordController,
                          style: TextStyle(color: const Color.fromARGB(255, 32, 11, 11)),
                          decoration: InputDecoration(
                            labelText: 'Contraseña',
                            labelStyle: TextStyle(color: const Color.fromARGB(255, 34, 11, 11).withOpacity(0.5), fontFamily:"IBMPlexSans", fontWeight: FontWeight.bold),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color.fromARGB(255, 16, 6, 6)),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        TextField(
                          controller: celularController,
                          style: TextStyle(color: const Color.fromARGB(255, 40, 14, 14)),
                          decoration: InputDecoration(
                            labelText: 'Celular',
                            labelStyle: TextStyle(color: const Color.fromARGB(255, 30, 9, 9).withOpacity(0.5), fontFamily:"IBMPlexSans", fontWeight: FontWeight.bold,),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color.fromARGB(255, 16, 6, 6)),
                            ),
                          ),
                        ),
                        SizedBox(height: 35),
                         ElevatedButton(
                          onPressed: () {
                            // Lógica para guardar los datos
                            // Puedes agregar aquí la lógica para guardar los datos en algún lugar
                          },
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                            backgroundColor: Colors.red, // Color del botón de guardar
                          ),
                          child: Text('Crear Cuenta', style: TextStyle(fontSize: 20, color: Colors.white)),
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
            ),
          ],
        ),
      ),
    );
  }
}