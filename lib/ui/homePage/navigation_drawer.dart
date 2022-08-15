import 'package:flutter/material.dart';

class navigationDrawer extends StatelessWidget {
  const navigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:270,
      child: Drawer(
        child: Container(
          width: 223,
          color: Theme.of(context).backgroundColor,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Weather app',
                    style:TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 23,
                    )
                  ),
                  SizedBox(height:40),
                  ListView(
                    shrinkWrap: true,
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        dense: true,
                        title: Text(
                          'Настройки',
                          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                        leading: Icon(Icons.settings_outlined, size: 24, color: Theme.of(context).primaryColor),
                        onTap: () {
                          Scaffold.of(context).openEndDrawer();
                          Navigator.pushNamed(context, '/settings');
                        },
                      ),
                      SizedBox(height:20),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        dense: true,
                        title: Text(
                          'Избранные',
                          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                        leading: Icon(Icons.favorite_border, size: 24, color: Theme.of(context).primaryColor),
                        onTap: () {
                          Scaffold.of(context).openEndDrawer();
                          Navigator.pushNamed(context, '/favorites');
                        },
                      ),
                      SizedBox(height:20),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        dense: true,
                        title: Text(
                          'О приложении',
                          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                        leading: Icon(Icons.account_circle_outlined, size: 24, color: Theme.of(context).primaryColor),
                        onTap: () {
                          Scaffold.of(context).openEndDrawer();
                          Navigator.pushNamed(context, '/about');
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
 