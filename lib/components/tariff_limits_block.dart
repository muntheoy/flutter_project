import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TariffLimitsBlock extends StatelessWidget {
  final List<ChapterModel> tabDataList;

  TariffLimitsBlock({
    required this.tabDataList,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0), 
          child: Text(
            'Тарифы и лимиты',
            style: TextStyle(
              fontFamily: 'CastomFont',
              fontWeight: FontWeight.w700,
              fontSize: 20.0,
              color: Colors.black,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0), 
          child: Text(
            'Для операций в Сбербанк Онлайн',
            style: TextStyle(
              fontFamily: 'CastomFont',
              fontWeight: FontWeight.normal,
              fontSize: 14.0,
              color: Colors.black.withOpacity(0.55),
            ),
          ),
        ),
        SizedBox(height: 16.0),
        ChapterList(tabDataList: tabDataList),
      ],
    );
  }
}


class ChapterModel {
  final String icon;
  final String title;
  final String subtitle;

  ChapterModel({required this.icon, required this.title, required this.subtitle});
}

class ChapterWidget extends StatelessWidget {
  final ChapterModel data;
  final bool isLast;

  ChapterWidget({required this.data, required this.isLast});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Обработчик нажатия
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
            SvgPicture.asset(
              data.icon,
              width: 40,
              height: 40,
              
            ),
            SizedBox(width: 16),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: isLast
                        ? BorderSide.none 
                        : BorderSide(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data.title,
                      style: TextStyle(
              fontFamily: 'CastomFont', 
              fontWeight: FontWeight.w400,
              fontSize: 16.0,
              color: Colors.black
              ),
                    ),
                    Text(
                      data.subtitle,
                      style: TextStyle(
              fontFamily: 'CastomFont', 
              fontWeight: FontWeight.normal,
              fontSize: 14.0,
              color: Colors.black.withOpacity(0.55)
              ),
                    ),
                  ],
                ),
              ),
            ),
            SvgPicture.asset(
              'assets/svg/arrow.svg',
              
            ),
          ],
          ),
        ),
      ),
    );
  }
}



class ChapterList extends StatelessWidget {
  final List<ChapterModel> tabDataList;

  ChapterList({required this.tabDataList});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: tabDataList.asMap().entries.map((entry) {
        final index = entry.key;
        final isLast = index == tabDataList.length - 1;
        return ChapterWidget(data: entry.value, isLast: isLast);
      }).toList(),
    );
  }
}

