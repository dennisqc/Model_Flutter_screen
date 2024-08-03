import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
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
              Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Juan MAnuel",
                        style: TextStyle(fontSize: 35),
                      ),
                      Text(
                        "Desarrollador",
                        style: TextStyle(fontSize: 25),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [Text("Articles"), Text("43")],
                          ),
                          Column(
                            children: [Text("Articles"), Text("43")],
                          ),
                          Column(
                            children: [Text("Articles"), Text("43")],
                          )
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
