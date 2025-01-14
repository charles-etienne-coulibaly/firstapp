import 'package:firstapp/models/planning.dart';
import 'package:firstapp/widgets/planning_widget.dart';
import 'package:flutter/material.dart';

class Accueil extends StatefulWidget {
  const Accueil({super.key});

  @override
  State<Accueil> createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  //Liste utilisant la classe Planning de planning.dart
  List<Planning> datas = [
    //Object of Planning class
    Planning("Anglais", "maison", "description english", "12/12/2024",
        "images/apple.png"),
    Planning("Anglais1", "maison1", "description english1", "19/12/2024",
        "images/facebook.png"),
    Planning(
        "Anglais2",
        "maison2",
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
        "26/12/2024",
        "images/fond.jpg"),
    Planning(
        "Anglais3",
        "maison3",
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.3",
        "03/01/2025",
        "images/google.png"),
    Planning(
        "Element1",
        "maison2",
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.2",
        "26/12/2024",
        "images/fond.png"),
    Planning(
        "Element2",
        "maison3",
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.3",
        "03/01/2025",
        "images/proxy-image.png"),
  ];
  /*int selectedItem = 0;
  List<Widget> pages = [
    Accueil(),
    Center(child: Text("Planning")),
    Center(child: Text("A propos")),
  ];*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: datas.length,
            itemBuilder: (context, int index) {
              return PlanningWidget(planning: datas[index]);//Retourne les card de planning en passant en paramètre List<Planning> datas
            }));
  }
}
