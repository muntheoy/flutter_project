import 'package:flutter/material.dart';

class InterestBlock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0), // Отступы слева и справа для всего блока
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Интересы',
              style: TextStyle(
                fontFamily: 'CastomFont',
                fontWeight: FontWeight.w700,
                fontSize: 20.0,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Мы подбираем истории и предложения по темам, которые вам нравятся',
              style: TextStyle(
                fontFamily: 'CastomFont',
                fontWeight: FontWeight.w500,
                fontSize: 14.0,
                color: Colors.black.withOpacity(0.55),
              ),
            ),
            SizedBox(height: 10.0),
            ButtonList(
              buttonDataList: [
                ButtonModel(buttonText: 'Еда'),
                ButtonModel(buttonText: 'Саморазвитие'),
                ButtonModel(buttonText: 'Технологии'),
                ButtonModel(buttonText: 'Дом'),
                ButtonModel(buttonText: 'Досуг'),
                ButtonModel(buttonText: 'Забота о себе'),
                ButtonModel(buttonText: 'Наука'),
                // ... добавьте дополнительные кнопки по необходимости
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonModel {
  final String buttonText;

  ButtonModel({required this.buttonText});
}

class ButtonList extends StatelessWidget {
  final List<ButtonModel> buttonDataList;

  ButtonList({required this.buttonDataList});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0, // Отступ между виджетами
      children: buttonDataList.map((buttonModel) {
        return ElevatedButton(
          onPressed: () {
            // Обработчик нажатия
          },
          style: ElevatedButton.styleFrom(
            elevation: 0,
            primary: Colors.black.withOpacity(0.08),
          ),
          child: Text(
            buttonModel.buttonText,
            style: TextStyle(color: Colors.black),
          ),
        );
      }).toList(),
    );
  }
}

