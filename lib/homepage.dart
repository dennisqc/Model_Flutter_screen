import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:screenmodel/widget/widget_info.dart';
import 'package:screenmodel/widget/widget_row.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(16),
                      width: 150.0,
                      height: 150.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            20.0), // Radio de borde para bordes redondeados
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black
                                .withOpacity(0.3), // Color de la sombra
                            blurRadius: 8.0, // Difuminado de la sombra
                            offset: Offset(0, 4), // Offset de la sombra
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.network(
                          'https://previews.123rf.com/images/stockgiu/stockgiu1803/stockgiu180305148/97250571-dise%C3%B1o-gr%C3%A1fico-lindo-del-ejemplo-del-vector-del-perfil-de-abuelo.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ],
                ),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Juan Manuel",
                      style: TextStyle(
                          fontSize: 35,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Desarrollador",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          WidgetInfo(type: "Articles", quanatity: "43"),
                          WidgetInfo(type: "Following", quanatity: "234"),
                          WidgetInfo(type: "Rating", quanatity: "6.3"),
                        ],
                      ),
                    )
                  ],
                ))
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Chat',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      side: BorderSide(color: Colors.white, width: 2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 15),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Follow',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.greenAccent,
                      side: BorderSide(color: Colors.greenAccent, width: 2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Column(
                children: [
                  Text("Profile",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w200)),
                  Text("Information",
                      style: TextStyle(color: Colors.white, fontSize: 35)),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non magna sit amet nulla rutrum eleifend. Donec convallis faucibus erat. Maecenas laoreet id nisl non consequat. Maecenas pulvinar urna vel ligula iaculis convallis. Morbi laoreet mauris sed egestas accumsan. Pellentesque eu est dignissim, posuere libero et, gravida magna. Nunc sit amet lorem ligula. Nunc eget feugiat diam.",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w300)),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  WidgetRow(
                    subtitle: "Ir de compras al super",
                    concepto: "No te olvides de llevar la lista",
                    url:
                        "https://st1.uvnimg.com/ca/56/996fa1d3492ca5b99d5d32090524/350f3da95c57412c9dcb8dcdb7710754",
                    color: Colors.white,
                  ),
                  
                  WidgetRow(
                      color: Colors.greenAccent,
                      subtitle: "Llevas cosas a la casa del L..",
                      concepto: "Son cosas delicadas debes tener cuidado",
                      url:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSusDG2n_TsPCYb8lu8-AVY4to8NTGlAVCJog&s"),
                  WidgetRow(
                      color: Colors.white,
                      subtitle: "Conseguir comida para las mascotas",
                      concepto: "deben ser bajo en grasas",
                      url:
                          "https://www.purina.es/sites/default/files/styles/ttt_image_original/public/2024-02/sitesdefaultfilesstylessquare_medium_440x440public2022-08Siberian20Husky1.webp?itok=ldOyxnED")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
