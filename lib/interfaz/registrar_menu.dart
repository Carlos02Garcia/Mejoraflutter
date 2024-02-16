import 'package:flutter/material.dart';
import 'dart:ui';

class RegistrarMenu extends StatefulWidget {
  @override
  _RegistrarmenuState createState() => _RegistrarmenuState();
}

class _RegistrarmenuState extends State<RegistrarMenu> {
  bool checkBoxValuePizza = false;
  bool checkBoxValuePerroCaliente = false;
  bool checkBoxValueSalchipapa = false;
  bool checkBoxValuePicada = false;
  bool checkBoxValueHamburguesa = false;
  bool checkBoxValueTaco = false;
  bool checkBoxValueShawarma = false;
  bool checkBoxValueChuzo = false;
  bool checkBoxValueChicharron = false;
  bool checkBoxValueBurrito = false;

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
              top: 220,
              left: 20,
              right: 20,
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                  child: Container(
                    width: 400,
                    height: 700,
                    padding: EdgeInsets.fromLTRB(16.0, 16.0, 32.0, 16.0),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 211, 124, 124).withOpacity(0.5),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start, // Cambiado a start
                      crossAxisAlignment: CrossAxisAlignment.center, // Agregado para centrar el contenido horizontalmente
                      children: [
                        // Texto centrado en la parte superior
                        Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Text(
                          'Registrar Menú',
                          style: TextStyle(
                            fontFamily: 'Mogra',
                            color: Color.fromARGB(255, 40, 11, 11),
                            fontSize: 27,
                          ),
                        ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Cargar menú en PDF ',
                          style: TextStyle(
                            fontFamily: 'Mogra',
                            color: Color.fromARGB(255, 40, 11, 11),
                            fontSize: 27,
                          ),
                        ),
                        SizedBox(height: 20),
                        // Botón "Cargar aquí"
                        ElevatedButton(
                          onPressed: () {
                            // Lógica para cargar el menú en PDF
                          },
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 70, vertical: 15),
                            backgroundColor:Color.fromARGB(255, 181, 17, 27), // Color del botón
                          ),
                          child: Text('Cargar aquí', style: TextStyle(fontSize: 18, color: Colors.white, fontFamily: "BarlowSemiCondensed")),
                        ),
                        SizedBox(height: 10),
                        // Botón "Mirar"
                        ElevatedButton(
                          onPressed: () {
                            // Lógica para ver el menú
                          },
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 70, vertical: 15),
                            backgroundColor: Color.fromARGB(255, 181, 17, 27), // Color del botón
                          ),
                          child: Text('Categorias', style: TextStyle(fontSize: 18, color: Colors.white, fontFamily: "BarlowSemiCondensed")),
                        ),
                        SizedBox(height: 6),
                        Text(
                          'Seleccione la o las categorías para cargar su menú',
                          style: TextStyle(
                            fontFamily: 'Mogra',
                            color: Color.fromARGB(255, 40, 11, 11),
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(height: 4),
                        // Checkboxes en dos columnas no centradas
Expanded(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      // Columna para la primera mitad de checkboxes
      Expanded(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildCheckboxRow('Pizza'),
              buildCheckboxRow('Perro Caliente'),
              buildCheckboxRow('Salchipapa'),
              buildCheckboxRow('Shawarma'), 
              buildCheckboxRow('Chuzo'),
            ],
          ),
        ),
      ),
      // Columna para la segunda mitad de checkboxes
      SizedBox(width: 50),
      Expanded(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildCheckboxRow('Picada'),
              buildCheckboxRow('Hamburguesa'),
              buildCheckboxRow('Burrito'),
              buildCheckboxRow('Salchipollo'),
              buildCheckboxRow('Salchichorizo'),     // Puedes agregar más filas según tus necesidades
            ],
          ),
        ),
      ),
    ],
  ),
),

// Texto "Agregar Otro" y Botón "Guardar Menu"
Positioned(
  bottom: 16,
  left: 32,
  child: Column(
    mainAxisAlignment: MainAxisAlignment.end, // Alinear al final del contenedor
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        'Agregar Otro',
        style: TextStyle(
          fontFamily: 'Mogra',
          color: Color.fromARGB(255, 31, 10, 10).withOpacity(0.5),
          fontSize: 25,
        ),
      ),
      SizedBox(height: 20),
      ElevatedButton(
        onPressed: () {
          // Lógica para guardar la cuenta
        },
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
          backgroundColor: Color.fromARGB(255, 181, 17, 27),
        ),
        child: Text('Guardar Menu', style: TextStyle(fontFamily: 'BarlowSemiCondensed', fontSize: 25, color: Color.fromARGB(255, 244, 239, 239))),
      ),
    ],
  ),
),


                      ],
                    ),
                  ),
                ),
              ),
            ),
            // Imagen adicional centrada en la parte superior
            Positioned(
              top: 10,
              left: 134,
              right: 134,
              child: Container(
                width: 10,
                height: 195,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  image: DecorationImage(
                    image: AssetImage('assets/image/imagen.png'),
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

Widget buildCheckboxRow(String label) {
  return Container(
    margin: EdgeInsets.only(bottom: 8),
    child: Container(
      height: 40,
      width: double.infinity, // Ajusta el ancho a toda la pantalla
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Color.fromARGB(255, 16, 6, 6), width: 2.0)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(label),
          Spacer(), // Agrega espacio para que el Checkbox se alinee a la derecha
          Checkbox(
            value: getCheckboxValue(label),
            onChanged: (value) {
              setState(() {
                setCheckboxValue(label, value!);
              });
            },
          ),
        ],
      ),
    ),
  );
}


  bool getCheckboxValue(String label) {
    switch (label) {
      case 'Pizza':
        return checkBoxValuePizza;
      case 'Perro Caliente':
        return checkBoxValuePerroCaliente;
      case 'Salchipapa':
        return checkBoxValueSalchipapa;
      case 'Picada':
        return checkBoxValuePicada;
      case 'Hamburguesa':
        return checkBoxValueHamburguesa;
      // Agrega más casos según tus necesidades
      default:
        return false;
    }
  }

  void setCheckboxValue(String label, bool value) {
    switch (label) {
      case 'Pizza':
        checkBoxValuePizza = value;
        break;
      case 'Perro Caliente':
        checkBoxValuePerroCaliente = value;
        break;
      case 'Salchipapa':
        checkBoxValueSalchipapa = value;
        break;
      case 'Picada':
        checkBoxValuePicada = value;
        break;
      case 'Hamburguesa':
        checkBoxValueHamburguesa = value;
        break;
      // Agrega más casos según tus necesidades
    }
  }
}
