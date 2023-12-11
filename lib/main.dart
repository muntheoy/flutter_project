import 'package:flutter/material.dart';
import 'package:flutter_project_effective/components/headerIcons.dart';
import 'package:flutter_project_effective/components/headerUser.dart';
import 'package:flutter_project_effective/components/profile_content.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          elevation: 0,
        ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height, // Установите фиксированную высоту
        child: ThreeElementsWidget(),
      ),
    );
  }
}

class ThreeElementsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                expandedHeight: 350.0,
                pinned: true,
                backgroundColor: Colors.white,
                elevation: 4.0,
                flexibleSpace: Stack(
                  children: [
                    Positioned.fill(
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 4.0,
                              spreadRadius: 1.0,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                      ),
                    ),
                    FlexibleSpaceBar(
                      background: Container(
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            HeaderIcons(),
                            HeaderUser(
                              photo: 'assets/png/user_photo.jpg',
                              userName: 'Руслан',
                            ),
                            SizedBox(height: 15.0),
                            TabBar(
                              indicatorSize: TabBarIndicatorSize.tab,
                              indicatorColor: Color.fromRGBO(6, 132, 65, 1),
                              labelColor: Colors.black,
                              unselectedLabelColor: Colors.black.withOpacity(0.55),
                              tabs: [
                                Tab(text: 'Профиль'),
                                Tab(text: 'Настройки'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Container(
                      color: Colors.white,
                      child: Center(
                        child: ProfileContent(),
                      ),
                    ),
                  ),
                  // Add additional Sliver widgets as needed
                ],
              ),
              SliverToBoxAdapter(
                child: Container(
                  color: Colors.grey[300],
                  child: Center(
                    child: Text('Настройки'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}





