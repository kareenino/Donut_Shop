import 'package:donut_shop/utility/constants.dart';
import 'package:donut_shop/widgets/bottombar.dart';
import 'package:donut_shop/widgets/mainpage.dart';
import 'package:donut_shop/widgets/sidemenu.dart';
import 'package:flutter/material.dart';

class DonutShopMain extends StatelessWidget {
  const DonutShopMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: DonutSideMenu(),
      ),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Utils.mainDark),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Image.network(Utils.donutLogoRedText, width: 120)
      ),
      body: Column(
        children: [
          Expanded(
            child: Navigator(
              key: Utils.mainListNav,
              initialRoute: '/main',
              onGenerateRoute: (RouteSettings settings){
                Widget page;
                switch(settings.name) {
                  case '/main':
                    page = DonutMainPage();
                    break;
                  case '/favorites':
                    page = Center(child: Text('favorites'));
                    break;
                  case '/shoppingcart':
                    page = Center(child: Text('shopping cart'));
                    break;
                  default:
                    page = Center(child: Text('main'));
                    break;
                }

                return PageRouteBuilder(pageBuilder: (_, __, ___) => page,
                  transitionDuration: const Duration(seconds: 0)
                );
              },
            )
          ),
          Container(
            
          ),
        DonutBottomBar(),
        ],
      )
    );
  }
}