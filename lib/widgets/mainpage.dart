import 'package:donut_shop/services/donutbar_service.dart';
import 'package:donut_shop/utility/constants.dart';
import 'package:donut_shop/widgets/donut_filter.dart';
import 'package:donut_shop/widgets/donut_list.dart';
import 'package:donut_shop/widgets/pager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DonutMainPage extends StatelessWidget {
  const DonutMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DonutPager(),
        DonutFilterBar(),
        Expanded(
          child: Consumer<DonutService>(
            builder: (context, donutService, child) {
              return DonutList(donuts: donutService.filteredDonuts);
            },
          )
        )
      ],
    );
  }
}