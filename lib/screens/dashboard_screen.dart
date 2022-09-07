import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        backgroundColor: Colors.blueGrey,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://i.pinimg.com/originals/8b/bf/71/8bbf71f46782249a4c1e8cdf6e40e516.jpg'),
                  fit: BoxFit.cover
                ),
              ),

              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://http2.mlstatic.com/D_NQ_NP_711294-MLM32975646559_112019-O.jpg'),
              ),
              accountName: Text(
                'Juan Pablo Jaramillo Nieto',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              accountEmail: Text(
                'prueba@correo.com',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Image.asset('assets/iconGroot.png'),
              trailing: Icon(Icons.chevron_right),
              title: Text('Práctica 1'),
              onTap: (){},
            ),
            ListTile(
              leading: Image.asset('assets/iconGroot.png'),
              trailing: Icon(Icons.chevron_right),
              title: Text('Base de Datos'),
              onTap: (){},
            ),
            ListTile(
              leading: Image.asset('assets/iconGroot.png'),
              trailing: Icon(Icons.chevron_right),
              title: Text('Cerrar Sesión'),
              onTap: (){
                Navigator.pushNamed(context, '/login',);
              },
            )
          ],
        ),
      ),

    );
  }
}