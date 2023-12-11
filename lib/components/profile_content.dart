import 'package:flutter/material.dart';
import 'package:flutter_project_effective/components/connected_services_blok.dart';
import 'package:flutter_project_effective/components/interest_widget.dart';
import 'package:flutter_project_effective/components/tariff_limits_block.dart';

class ProfileContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 16),
        ConnectedServicesBlock(),
        SizedBox(height: 25.0),
        TariffLimitsBlock(
          tabDataList: [
            ChapterModel(
              icon: 'assets/svg/limit_icon.svg',
              title: 'Изменить суточный лимит',
              subtitle: 'На платежи и переводы',
            ),
            ChapterModel(
              icon: 'assets/svg/percent_icon.svg',
              title: 'Переводы без комиссии',
              subtitle: 'Показать остаток в этом месяце',
            ),
            ChapterModel(
              icon: 'assets/svg/green_arrow.svg',
              title: 'Информация о тарифах и лимитах',
              subtitle: '',
            ),
          ],
        ),
        SizedBox(height: 25.0),
        InterestBlock(),
      ],
    );
  }
}



