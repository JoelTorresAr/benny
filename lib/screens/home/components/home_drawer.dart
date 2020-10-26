import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../../splash/splash_screen.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: SizeConfig.screenWidth * 0.55,
            child: DrawerHeader(
                decoration: BoxDecoration(color: kPrimaryColor),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        width: SizeConfig.screenWidth * 0.25,
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: Image.asset("assets/images/logo.jpg"),
                        ),
                      ),
                      Text(
                        "User name",
                        style: TextStyle(
                            fontSize: getProportionateScreenWidth(20),
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "926219958",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                )),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text(
              'Home',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            onTap: () {
              Navigator.pushNamed(context, SplashScreen.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text(
              'Carrito',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            onTap: () {
              Navigator.pushNamed(context, SplashScreen.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.notifications_sharp),
            title: Text(
              'Notificaciones',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            onTap: () {
              Navigator.pushNamed(context, SplashScreen.routeName);
            },
          ),
          Divider(
            color: kTextColor.withOpacity(0.3),
            thickness: 1,
            indent: 10,
            endIndent: 0,
          ),
          ListTile(
            leading: Icon(Icons.delivery_dining),
            title: Text(
              'Seguimiento de pedido',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            onTap: () {
              Navigator.pushNamed(context, SplashScreen.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.account_circle_rounded),
            title: Text(
              'Perfil',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            onTap: () {
              Navigator.pushNamed(context, SplashScreen.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.lock_sharp),
            title: Text(
              'Cambiar contraseña',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            onTap: () {
              Navigator.pushNamed(context, SplashScreen.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.group_add_rounded),
            title: Text(
              'Recomienda y gana',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            onTap: () {
              Navigator.pushNamed(context, SplashScreen.routeName);
            },
          ),
          Divider(
            color: kTextColor.withOpacity(0.3),
            thickness: 1,
            indent: 10,
            endIndent: 0,
          ),
          ListTile(
            leading: Icon(Icons.perm_contact_cal),
            title: Text(
              'Contáctenos',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            onTap: () {
              Navigator.pushNamed(context, SplashScreen.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text(
              'Acerca de nosotros',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            onTap: () {
              Navigator.pushNamed(context, SplashScreen.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text(
              'Califícanos',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            onTap: () {
              Navigator.pushNamed(context, SplashScreen.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text(
              'Compartir aplicación',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            onTap: () {
              Navigator.pushNamed(context, SplashScreen.routeName);
            },
          ),
          Divider(
            color: kTextColor.withOpacity(0.3),
            thickness: 1,
            indent: 10,
            endIndent: 0,
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text(
              'Califícanos',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            onTap: () {
              Navigator.pushNamed(context, SplashScreen.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.live_help),
            title: Text(
              'Preguntas automaticas',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            onTap: () {
              Navigator.pushNamed(context, SplashScreen.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.event_note),
            title: Text(
              'Terminos & condiciones',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            onTap: () {
              Navigator.pushNamed(context, SplashScreen.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.local_police),
            title: Text(
              'Politicas de privacidad',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            onTap: () {
              Navigator.pushNamed(context, SplashScreen.routeName);
            },
          ),
          Divider(
            color: kTextColor.withOpacity(0.3),
            thickness: 1,
            indent: 10,
            endIndent: 0,
          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text(
              'Cerrar sesión',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            onTap: () {
              Navigator.pushNamed(context, SplashScreen.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text(
              'Cerrar sesión',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            onTap: () {
              Navigator.pushNamed(context, SplashScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
