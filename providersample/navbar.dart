import 'package:flutter/material.dart';

import 'account.dart';
import 'settings.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:[
          TextButton(
              onPressed: ()
        {Navigator.pushReplacementNamed(context, AccountScreen.id);
        },

                child: const Icon(Icons.account_circle, color: Colors.white),

          ),
          TextButton(
              onPressed: () =>
                  Navigator.pushReplacementNamed(context, SettingsScreen.id),
              child: Icon(Icons.settings, color: Colors.white)
          ),
        ],
      ),
    );
  }
}