import 'package:donut_shop/services/bottombar_service.dart';
import 'package:donut_shop/utility/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DonutBottomBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: Consumer<DonutBottomBarSelectionService>(
        builder: (context, bottomBarSelectionService, child) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(
                  Icons.trip_origin, 
                  color: bottomBarSelectionService.tabSelection == 'main' ? 
                            Utils.mainDark : Utils.mainColor
                ),
                onPressed: () {
                  bottomBarSelectionService.setTabSelection('main');
                }
              ),
              IconButton(
                icon: Icon(Icons.favorite, 
                color: bottomBarSelectionService.tabSelection == 'favorites' ? 
                            Utils.mainDark : Utils.mainColor
                ),
                onPressed: () {
                  bottomBarSelectionService.setTabSelection('favorites');
                }
              ),
              IconButton(
                icon: Icon(Icons.shopping_cart,
                color: bottomBarSelectionService.tabSelection == 'shoppingcart' ? 
                            Utils.mainDark : Utils.mainColor
                ),
                onPressed: () {
                  bottomBarSelectionService.setTabSelection('shoppingcart');
                }
              )
            ]
          );
      })
    );
  }
}