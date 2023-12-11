import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeaderIcons extends StatelessWidget {
  const HeaderIcons({Key? key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0), // Отступы слева и справа для всего блока
      child: Container(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: InkResponse(
                onTap: () {
                  // Обработка нажатия
                },
                child: Container(
                  padding: EdgeInsets.all(0),
                  child: SvgPicture.asset(
                    'assets/svg/cross_icon.svg',
                    width: 30.0,
                    height: 30.0,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: InkResponse(
                onTap: () {
                  // Обработка нажатия
                },
                child: Container(
                  padding: EdgeInsets.all(0),
                  child: SvgPicture.asset(
                    'assets/svg/exite_icon.svg',
                    width: 30.0,
                    height: 30.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

