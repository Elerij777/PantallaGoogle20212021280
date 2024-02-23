import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {},
          ),
          backgroundColor: const Color.fromARGB(255, 239, 239, 239),
          title: RichText(
            text: const TextSpan(
              style: TextStyle(
                color: Colors.black,
              ),
              children: <TextSpan>[
                TextSpan(text: 'Cuenta de '),
                TextSpan(
                  text: 'Google',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          bottom: const TabBar(
            isScrollable: true,
            indicatorColor: Color.fromARGB(255, 0, 88, 240),
            labelColor: Color.fromARGB(255, 0, 88, 240),
            tabs: [
              Tab(
                child: Text(
                  'Pagina Principal',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  'Informacion Personal',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  'Datos y Privacidad',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
          foregroundColor: Colors.black,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.help_outline),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.account_circle),
              onPressed: () {},
            ),
          ],
        ),
        body: const TabBarView(
          children: [
            PaginaPrincipal(),
            Informacion(),
            DyP(),
          ],
        ),
      ),
    );
  }
}

class Informacion extends StatelessWidget {
  const Informacion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Informacion Personal'));
  }
}

class PaginaPrincipal extends StatelessWidget {
  const PaginaPrincipal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: ListView(
              children: <Widget>[
                const ListTile(
                  title: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Tu cuenta está protegida',
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              'La verificación de seguridad revisó tu cuenta y no encontró acciones recomendadas.',
                              style: TextStyle(fontSize: 12),
                            ),
                            Text(
                              'Ver detalles',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.verified_user,
                        size: 50.0,
                        color: Colors.green,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 0.5,
                  color: Colors.black,
                ),
                const ListTile(
                  title: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Verificación de Privacidad',
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              'Elija la configuración de privacidad indicada para ti con esta guía paso a paso.',
                              style: TextStyle(fontSize: 12),
                            ),
                            Text(
                              'Realizar la verificación de seguridad',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.shield_moon,
                        size: 50.0,
                        color: Colors.blue,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 0.5,
                  color: Colors.black,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(children: [
                    Text(
                      '¿Buscas otra información?',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.search),
                        Text('Buscar en la cuenta Google'),
                        Icon(Icons.chevron_right),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.help_outline),
                        Text('Ver las opciones de ayuda'),
                        Icon(Icons.chevron_right),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.chat_bubble_rounded),
                        Text('Enviar comentarios'),
                        Icon(Icons.chevron_right),
                      ],
                    ),
                  ]),
                ),
                Container(
                  height: 0.5,
                  color: Colors.black,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Solo tú puedes ver la configuración.\nTambién puedes revisar la configuración de\nMaps, la Búsqueda o cualquier servicio de\nGoogle que usescon frecuencia.\n Google protege la privacidad\ny la seguridad de tus datos.\n Más información',
                            ),
                            Icon(
                              Icons.shield_moon,
                              size: 90.0,
                              color: Colors.blue,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DyP extends StatelessWidget {
  const DyP({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Datos y privacidad'));
  }
}
