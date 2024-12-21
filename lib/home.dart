import 'package:firstapp/models/planning.dart';
import 'package:firstapp/widgets/planning_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Planning> datas = [
    Planning("Anglais", "maison", "description english", "12/12/2024"),
    Planning("Anglais1", "maison1", "description english1", "19/12/2024"),
    Planning("Anglais2", "maison2", "description english2", "26/12/2024"),
    Planning("Anglais3", "maison3", "description english3", "03/01/2025"),
    Planning("Element1", "maison2", "description english2", "26/12/2024"),
    Planning("Element2", "maison3", "description english3", "03/01/2025"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Page d'Accueil"),
          elevation: 10,
          backgroundColor: Colors.cyan,
        ),
        body: ListView.builder(
            itemCount: datas.length,
            itemBuilder: (context, int index) {
              return PlanningWidget(planning: datas[index]);
            }));
  }
}
