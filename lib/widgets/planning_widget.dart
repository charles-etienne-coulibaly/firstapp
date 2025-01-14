import 'package:firstapp/models/planning.dart';
import 'package:firstapp/widgets/planning_details.dart';
import 'package:flutter/material.dart';

class PlanningWidget extends StatelessWidget {
  final Planning planning;
  const PlanningWidget({super.key, required this.planning});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PlanningDetails(planning: planning)/*Retourne le widget PlanningDetails()*/));
        print("Ecole");//Afficher dans le terminal après un clique
      },
      child: Padding(
        padding: const EdgeInsets.all(8),
        //Card
        child: Card(
          elevation: 15,
          child: Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.cyan.shade500,
              ),
              child: ListTile(
                //Image du card
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage(planning.imageUrl),
                          fit: BoxFit.cover)),
                ),
                //Titre du card
                title: Text(
                  planning.titre,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                //Date du card
                subtitle: Text(planning.date),
                //Lieu du card
                trailing: Text(planning.lieu),
              )),
        ),
      ),
    );
  }
}
