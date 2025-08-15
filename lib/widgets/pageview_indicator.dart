
import 'package:donut_shop/utility/constants.dart';
import 'package:flutter/material.dart';

class PageViewIndicator extends StatelessWidget {
  
  PageController? controller;
  int? numberOfPages;
  int? currentPage;

  PageViewIndicator({ this.controller, this.numberOfPages, this.currentPage });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(numberOfPages!, (index) {

        return GestureDetector(  
          onTap: () {
            controller!.animateToPage(
              index, 
              duration: const Duration(milliseconds: 500), 
              curve: Curves.easeInOut);
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 250),
            curve: Curves.easeInOut,
            width: 15,
            height: 15,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: currentPage == index ? 
                Utils.mainColor : Colors.grey.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10)
            )
          )
        );
      })
    );
  }
}