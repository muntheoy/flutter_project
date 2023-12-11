import 'package:flutter/material.dart';

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


class SubscriptionWidget extends StatelessWidget {
  final SubscriptionModel data;

  SubscriptionWidget({required this.data});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        
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






