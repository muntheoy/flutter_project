import 'package:flutter/material.dart';

class HeaderUser extends StatelessWidget {
  final String photo;
  final String userName;

  const HeaderUser({Key? key, required this.photo, required this.userName})
      : super(key: key);

  Widget buildUserPhoto(double screenWidth) {
    double photoSize = screenWidth * 0.35;
    double verticalSpacing = 30.0; // Увеличенное расстояние между изображением и текстом

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: photoSize,
          height: photoSize,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 2.0,
                blurRadius: 5.0,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50.0),
            child: Image.asset(
              photo,
              width: photoSize,
              height: photoSize,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: verticalSpacing), // Используем увеличенное значение отступа
        Text(
          userName,
          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return buildUserPhoto(screenWidth);
  }
}
