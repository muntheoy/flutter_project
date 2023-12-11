import 'package:flutter/material.dart';

class ConnectedServicesBlock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SubscriptionBlock(),
        SizedBox(height: 10.0),
        Container(
          height: 200, 
          child: SubscriptionCarousel(
            subscriptionDataList: [
              SubscriptionModel(
                icon: 'assets/png/widget_icon_1.png',
                title: 'СберПрайм',
                subtitle: 'Платёж 9 июля',
                subtitle_2: '199 рублей в месяц',
              ),
              SubscriptionModel(
                icon: 'assets/png/widget_icon_2.png',
                title: 'Переводы',
                subtitle: 'Быстрые и удобные',
                subtitle_2: '199 рублей в месяц',
              ),
              
            ],
          ),
        ),
      ],
    );
  }
}








class SubscriptionBlock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'У вас подключено',
              style: TextStyle(
                fontFamily: 'CustomFont',
                fontWeight: FontWeight.w700,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Подписки, автоплатежи и сервисы, на которые вы подписались',
              style: TextStyle(
                fontFamily: 'CustomFont',
                fontWeight: FontWeight.normal,
                fontSize: 14.0,
                color: Colors.black.withOpacity(0.55),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SubscriptionCarousel extends StatelessWidget {
  final List<SubscriptionModel> subscriptionDataList;

  SubscriptionCarousel({required this.subscriptionDataList});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          for (var data in subscriptionDataList)
            Container(
              margin: EdgeInsets.all(8.0),
              child: SubscriptionWidget(data: data),
            ),
        ],
      ),
    );
  }
}





class SubscriptionWidget extends StatelessWidget {
  final SubscriptionModel data;

  SubscriptionWidget({required this.data});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Обработчик нажатия
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.6,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    data.icon,
                    width: 40,
                    height: 40,
                  ),
                  SizedBox(width: 8),
                  Text(
                    data.title,
                    style: TextStyle(
                      fontFamily: 'CustomFont',
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0,
                      color: Colors.black,
                    ),
                  ),
                  Spacer(),
                ],
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data.subtitle,
                      style: TextStyle(
                        fontFamily: 'CustomFont',
                        fontWeight: FontWeight.normal,
                        fontSize: 14.0,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      data.subtitle_2,
                      style: TextStyle(
                        fontFamily: 'CustomFont',
                        fontWeight: FontWeight.normal,
                        fontSize: 14.0,
                        color: Colors.black.withOpacity(0.55),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}






class SubscriptionModel {
  final String title;
  final String subtitle;
  final String icon;
  final String subtitle_2;

  SubscriptionModel({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.subtitle_2,
  });
}

