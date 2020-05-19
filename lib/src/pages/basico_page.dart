import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _crearImagen(),
            _crearTitulo(),
            _crearAcciones(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
          ],
        ),
      ),
    );
  }

  Widget _crearImagen() {
    return Image(
        image: NetworkImage(
            'https://images.unsplash.com/photo-1506744038136-46273834b3fb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjExMDk0fQ&w=1000&q=80'));
  }

  Widget _crearTitulo() {
    return SafeArea(
        child:Container(
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Lago de Internet',
                      style: estiloTitulo,
                    ),
                    SizedBox(
                      height: 7.0,
                    ),
                    Text('Imagen dificil de encontrar', style: estiloSubTitulo)
                  ],
                ),
              ),
              Icon(
                Icons.star,
                color: Colors.amberAccent,
                size: 30.0,
              ),
              Text(
                '41',
                style: TextStyle(fontSize: 20.0),
              ),
            ],
          ),
        )
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call, 'Llamadas'),
        _accion(Icons.near_me, 'Router'),
        _accion(Icons.share, 'Share'),
      ],
    );
  }

  Widget _accion(IconData icon, String texto) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.blue,
          size: 40.0,
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          texto,
          style: TextStyle(fontSize: 15.0, color: Colors.blue),
        ),
      ],
    );
  }

  Widget _crearTexto() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        child: Text(
          'Google LLC es una compañía principal subsidiaria de la multinacional estadounidense Alphabet Inc., cuya especialización son los productos y servicios relacionados con Internet, software, dispositivos electrónicos y otras tecnologías. El principal producto de Google es el motor de búsqueda de contenido en Internet, del mismo nombre, aunque ofrece también otros productos y servicios como la suite ofimática Google Drive, el correo electrónico llamado Gmail, sus servicios de mapas Google Maps, Google Street View y Google Earth, el sitio web de vídeos YouTube y otras utilidades web como Google Libros o Google Noticias, Google Chrome y la red social Google+ este último sacado fuera de línea en el primer cuatrimestre de 2019. Por otra parte, lidera el desarrollo del sistema operativo basado en Linux, Android, orientado a teléfonos inteligentes, tabletas, televisores y automóviles y en gafas de realidad aumentada, las Google Glass. Su eslogan es «Do the Right Thing» («Haz lo correcto»).1​',
          textAlign: TextAlign.justify,
        ));
  }

}

